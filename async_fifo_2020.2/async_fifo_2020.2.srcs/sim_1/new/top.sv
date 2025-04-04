

`define period_1 5
`define period_2 7

module top();
    parameter WIDTH = 32;
	parameter ASIZE = 4;
	parameter DEPTH = 2**ASIZE;
	logic w_clk;
	logic w_rst_n;
	
	logic r_clk;
	logic r_rst_n;
	
	logic [WIDTH-1:0] data;
	logic s_rst_n=1;
//	logic    [WIDTH - 1 : 0] MEM [0:DEPTH-1];
	logic [ASIZE-1:0] waddr, raddr;
//    logic almost_full, almost_empty;
//    logic wfull_val_2;
//    logic rempty_val_2;
	integer cnt=10;
	dstm #(.WIDTH(WIDTH)) m_dstm_2(), s_dstm_1();
	fifo_stalvl m_stalvl_1(),m_stalvl_2();
    cfg_sta s_cfg_sta_1();
    
	csv_afifo 
	#(.WIDTH(WIDTH), .ASIZE(ASIZE), .DEPTH(DEPTH))csv_afifo_uut
	(
	.w_clk(w_clk),
	.w_rst_n(w_rst_n),
	.r_clk(r_clk),
	.r_rst_n(r_rst_n),
	.m_dstm_2(m_dstm_2.mst),
	.s_dstm_1(s_dstm_1.slv),
	.m_stalvl_1(m_stalvl_1.mst),
	.m_stalvl_2(m_stalvl_2.mst), 
	.s_cfg_sta_1(s_cfg_sta_1.slv),
	.*
	);
	// stimulus signal
    initial begin
        r_clk = 0;
        w_clk = 0;
        s_dstm_1.valid = 1;
        s_dstm_1.data = 0;
        w_rst_n = 0;
        r_rst_n = 0;
        s_dstm_1.data = 0;
        
        s_cfg_sta_1.af_lvl = 2;
        s_cfg_sta_1.ae_lvl = 2;
        
        num_clock(5);
        w_rst_n = 1;
        r_rst_n = 1;
       
        repeat(17) begin
            write();
            cnt++;
        end
        
        repeat(16) begin
            read();
        end

        repeat(17) begin
            write();
            cnt++;
        end
        
        repeat(16) begin
            read();
        end
        $finish;
    end
    
    task num_clock(integer N);
        begin
            for (int i = 0; i < N; i++) begin
                @(posedge r_clk);
            end
        end
    endtask
    task write();
        begin
            s_dstm_1.data   = cnt;
            m_dstm_2.ready = 0;
            s_dstm_1.valid = 1;
            num_clock(1);
        end
    endtask
    
    task read();
        begin
            num_clock(1);
            m_dstm_2.ready = 1;
            s_dstm_1.valid = 0;
        end
    endtask
	always #`period_1 r_clk = ~r_clk;
	always #`period_2 w_clk = ~w_clk;
endmodule