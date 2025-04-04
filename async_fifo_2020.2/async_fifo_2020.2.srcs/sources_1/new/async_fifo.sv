`define WIDTH 32
`define ASIZE 4


interface dstm
    #(
        parameter WIDTH = `WIDTH
    );
    logic valid;
    logic ready;
    logic [WIDTH-1:0] data;
    
    modport master
    (
        output valid,
        output data,
        input ready
    );
    modport slave
    (
        input valid,
        input data,
        output ready
    );
endinterface
//----------------------------------
interface fifo_stalvl
    ();
    logic full, almost_full;
    logic empty, almost_empty;
    
    modport master
    (
        output full, almost_full,
        output empty, almost_empty
    );
    modport slave
    (
        input full, almost_full,
        input empty, almost_empty
    );
endinterface
//----------------------------------
interface cfg_sta
    ();
    logic [`ASIZE - 2 : 0] af_lvl;
    logic [`ASIZE - 2 : 0] ae_lvl;
    
    modport master
    (
        output af_lvl,
        output ae_lvl
    );
    modport slave
    (
        input af_lvl,
        input ae_lvl
    );
endinterface
//----------------------------------


module csv_afifo
    #(
    parameter WIDTH = `WIDTH,
	parameter ASIZE = `ASIZE,
    parameter DEPTH = 2**ASIZE
    )
    
    (
    dstm.slave        s_dstm_1,
    dstm.master        m_dstm_2,
    fifo_stalvl.master m_stalvl_1, m_stalvl_2,
    cfg_sta.slave     s_cfg_sta_1,
    input logic s_rst_n,

    input logic r_clk, r_rst_n, 
    input logic w_clk, w_rst_n

////    output  MEM,
//    output logic [ASIZE-1:0] waddr, raddr

    );
    logic [ASIZE : 0] wptr, rptr, wq2_rptr, rq2_wptr, wsync2_rptr, rsync2_wptr;
    logic [ASIZE-1:0] waddr, raddr;




    //----------------------------------------------------------------------
    //wprt_full
	logic [ASIZE : 0] wbin, wbin_next;
	logic [ASIZE : 0] wgray_next;
	logic             wfull_val, wafull_val;

    // Write pointer
    always_ff @(posedge w_clk or negedge w_rst_n)
        
        if (!w_rst_n | !s_rst_n) 
            begin 
                wbin <= 0;
                wptr <= 0;
            end
        else 
            begin
                wbin <= wbin_next;
                wptr <= wgray_next;
            end
	
	always_comb
	    begin
            wsync2_rptr[ASIZE] = wq2_rptr[ASIZE];
            for(int i = ASIZE - 1; i >= 0; i--) begin
                wsync2_rptr[i] = wsync2_rptr[i+1] ^ wq2_rptr[i];
            end
		    waddr           = wbin[ASIZE - 1 : 0];                          //?i?a chi? write hi??n ta?i (bin)
			wbin_next       = wbin + (s_dstm_1.valid & (~m_stalvl_1.full & s_dstm_1.ready));   //?i?a chi? write ti??p theo (bin)
			wgray_next    = (wbin_next >> 1 ) ^ wbin_next;                //?i?a chi? write ti??p theo (gray)
            // wfull_val     = (wgray_next == { ~wq2_rptr[ASIZE : ASIZE - 1], wq2_rptr[ASIZE - 2 : 0]});
            wfull_val     = (wbin_next == { ~wsync2_rptr[ASIZE], wsync2_rptr[ASIZE - 1 : 0]});
			// wgray_next_2    = ((wbin_next + s_cfg_sta_1.af_lvl) >> 1 ) ^ (wbin_next + s_cfg_sta_1.af_lvl);  
			wafull_val     = (wbin_next - wsync2_rptr >= (DEPTH - s_cfg_sta_1.af_lvl));

            s_dstm_1.ready = ~(wbin_next - wsync2_rptr >= (DEPTH - 1));
            // s_dstm_1.ready = ~wfull_val;
		end
	always_ff @(posedge w_clk or negedge w_rst_n)
	    begin
		    if(!w_rst_n | !s_rst_n)
			    begin
			        m_stalvl_1.almost_full  <= 0;
				    m_stalvl_1.full         <= 0;
				end
			else
			    begin
                    m_stalvl_1.full         <= wfull_val;
                    m_stalvl_1.almost_full  <= wafull_val;
				end
				
		end




    //----------------------------------------------------------------------
    // sync_r2w
	logic [ASIZE : 0] wq1_rptr;
	always_ff @(posedge w_clk or negedge w_rst_n)
        if (!w_rst_n | !s_rst_n) {wq2_rptr,wq1_rptr} <= 0;
        else {wq2_rptr,wq1_rptr} <= {wq1_rptr,rptr};
	//----------------------------------------------------------------------




    //----------------------------------------------------------------------
    //rprt_empty
	logic [ASIZE : 0] rbin, rbin_next;
	logic [ASIZE : 0] rgray_next;
	logic             rempty_val, raempty_val;
    
    // read pointer
    always_ff @(posedge r_clk or negedge r_rst_n)
        if (!r_rst_n | !s_rst_n ) 
            begin 
                rbin <= 0;
                rptr <= 0;
                
            end
        else 
            begin
                rbin <= rbin_next;
                rptr <= rgray_next;
            end


	always_ff @(posedge r_clk or negedge r_rst_n)
	    begin
		    if(!r_rst_n | !s_rst_n)
            begin
                m_stalvl_1.empty           <= 1;
                m_stalvl_1.almost_empty    <= 1;
            end
			else
			    begin
				    m_stalvl_1.empty        <= rempty_val;
                    m_stalvl_1.almost_empty <= raempty_val;
				end
		end

	always_comb
	    begin
            rsync2_wptr[ASIZE] = rq2_wptr[ASIZE];
            for(int i = ASIZE - 1; i >= 0; i--) begin
                rsync2_wptr[i] = rsync2_wptr[i+1] ^ rq2_wptr[i];
            end
		    raddr = rbin[ASIZE-1:0];
			rbin_next       = rbin + (m_dstm_2.ready & (~m_stalvl_1.empty & m_dstm_2.valid));
			rgray_next    = (rbin_next >> 1) ^ rbin_next;
            // rempty_val    = (rgray_next == rq2_wptr);
            rempty_val    = (rbin_next == rsync2_wptr);
			// rgray_next_2    = ((rbin_next + `almost_empty_cfg) >> 1 ) ^ (rbin_next + `almost_empty_cfg);
            raempty_val    = (rsync2_wptr - rbin_next <= s_cfg_sta_1.ae_lvl);

            m_dstm_2.valid = ~(rsync2_wptr - rbin_next <= 1);
            // m_dstm_2.valid = ~rempty_val;
		end
    //----------------------------------------------------------------------




    //----------------------------------------------------------------------
    // sync_w2r
	logic [ASIZE : 0] rq1_wptr;
	always_ff @(posedge r_clk or negedge r_rst_n)
        if (!r_rst_n| !s_rst_n) {rq2_wptr,rq1_wptr} <= 0;
        else {rq2_wptr,rq1_wptr} <= {rq1_wptr,wptr};
	//----------------------------------------------------------------------	





    //---------------FIFO_MEM-----------------------------------------------
	logic    [WIDTH - 1 : 0] MEM [0:DEPTH-1];
    // read data
    // assign m_dstm_2.data = MEM[raddr];
    always_ff @(posedge r_clk)
        if(m_dstm_2.ready & !m_stalvl_2.empty)
            m_dstm_2.data = MEM[raddr];
	// write data
	always_ff @(posedge w_clk)
        if(s_dstm_1.valid & !m_stalvl_1.full)
            MEM[waddr] <= s_dstm_1.data;
	//----------------------------------------------------------------------




    assign m_stalvl_2.full = m_stalvl_1.full;
    assign m_stalvl_2.empty = m_stalvl_1.empty;
    assign m_stalvl_2.almost_full = m_stalvl_1.almost_full;
    assign m_stalvl_2.almost_empty = m_stalvl_1.almost_empty;
endmodule

module A_FIFO
#(
    parameter WIDTH = 32,
	parameter ASIZE = 4,
	parameter DEPTH = 2**ASIZE
)
(
    input logic s_rst_n,
    input logic r_clk, r_rst_n, 
    input logic w_clk, w_rst_n,
    
    input logic wr_valid,
    input logic [WIDTH - 1 : 0] wr_data,
    output logic wr_ready,
    output logic full,
    output logic empty,
    output logic almost_full,
    output logic almost_empty,
    input logic cfg_afull,
    input logic cfg_aempty,
    output logic rd_valid,
    output logic [WIDTH - 1 : 0] rd_data,
    input logic rd_ready
);
    dstm       s_dstm_2();
    dstm        m_dstm_1();
    fifo_stalvl s_stalvl_2(), s_stalvl_1();
    cfg_sta     m_cfg_sta_1();
 
	csv_afifo #(
        .WIDTH(WIDTH), 
        .ASIZE(ASIZE), 
        .DEPTH(DEPTH)
	)
	csv_afifo_uut (
        .w_clk(w_clk),
        .w_rst_n(w_rst_n),
        .r_clk(r_clk),
        .r_rst_n(r_rst_n),
        .s_rst_n(s_rst_n),
        
        .m_dstm_2(s_dstm_2.master ),
        .s_dstm_1(m_dstm_1.slave),
        .m_stalvl_1(s_stalvl_1.master),
        .m_stalvl_2(s_stalvl_2.master), 
        .s_cfg_sta_1(m_cfg_sta_1.slave)
	);
    assign m_dstm_1.master.valid       = wr_valid;
    assign m_dstm_1.master.data        = wr_data;
    assign m_cfg_sta_1.master.af_lvl   = cfg_afull;
    assign m_cfg_sta_1.master.ae_lvl   = cfg_aempty;
    assign s_dstm_2.slave.ready       = rd_ready;
    
    assign wr_ready             = m_dstm_1.master.ready;
    assign rd_valid             = s_dstm_2.slave.valid;
    assign rd_data              = s_dstm_2.slave.data;
    assign full                 = s_stalvl_1.slave.full;
    assign empty                = s_stalvl_1.slave.empty;
    assign almost_full          = s_stalvl_1.slave.almost_full;
    assign almost_empty         = s_stalvl_1.slave.almost_empty;
    
endmodule
