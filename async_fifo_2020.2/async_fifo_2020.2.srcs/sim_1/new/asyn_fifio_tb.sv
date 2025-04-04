`define almost_full_cfg 5
`define almost_empty_cfg 3
`define period_1 5
`define period_2 10

module top();
    parameter WIDTH = 32;
	parameter ASIZE = 4;
	parameter DEPTH = 2**ASIZE;
	logic w_clk;
	logic w_rst_n;
	
	logic r_clk;
	logic r_rst_n;
	
	logic [WIDTH-1:0] data;
	logic s_rst_n;
//	logic    [WIDTH - 1 : 0] MEM [0:DEPTH-1];
	logic [ASIZE-1:0] waddr, raddr;
    logic [WIDTH - 1 : 0] MEM [0:DEPTH-1]; 
//    logic almost_full, almost_empty;
//    logic wafull_val;
//    logic raempty_val;
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
        s_dstm_1.valid = 0;
        m_dstm_2.ready = 0;
        s_rst_n = 0;
        w_rst_n = 0;
        r_rst_n = 0;
        s_dstm_1.data = 0;
        
        s_cfg_sta_1.af_lvl = `almost_full_cfg;
        s_cfg_sta_1.ae_lvl = `almost_empty_cfg;
        
        w_num_clock(1);
        w_rst_n = 1;
        r_rst_n = 1;
        w_num_clock(1);
        s_rst_n = 1;
        w_num_clock(2);
        num_write(17);
        r_num_clock(2);
        num_read(18);
        w_num_clock(2);
        num_write_read(10);
        num_read(15);
        num_write_read(2);
        s_rst_n = 0;
        num_write_read(2);
        s_rst_n = 1;
        num_write(6);
        num_read(18);
        w_num_clock(40);
        $finish;
    end

    task w_num_clock(integer wc);
        begin
            for (int i = 0; i < wc; i++) begin
                @(posedge w_clk);
            end
        end
    endtask
    task r_num_clock(integer rc);
        begin
            for (int i = 0; i < rc; i++) begin
                @(posedge r_clk);
            end
        end
    endtask
    task num_write(integer w);
        begin
            for (int i = 0; i < w; i++) 
            begin
                if (m_stalvl_1.almost_full & s_dstm_1.ready) begin
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(2);
                    cnt++;
                end
                else if (!m_stalvl_1.almost_full & s_dstm_1.ready) begin
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(1);
                    cnt++;
                end 
                else begin
                    s_dstm_1.valid = 0;
                    w_num_clock(1); 
                end     
            end
        end
    endtask
    
    task num_read(integer r);
        begin
            for (int i = 0; i < r; i++) begin
                if (m_stalvl_2.almost_empty & m_dstm_2.valid) begin
                    m_dstm_2.ready = 1;
                    r_num_clock(1);
                    m_dstm_2.ready = 0;
                    r_num_clock(2);
                end 
                else if (!m_stalvl_2.almost_empty & m_dstm_2.valid) begin
                    m_dstm_2.ready = 1;
                    r_num_clock(1);
                    m_dstm_2.ready = 0;
                    r_num_clock(1);
                end
                else begin
                    m_dstm_2.ready = 0;
                    r_num_clock(1);
                end
            end
        end
    endtask

    task num_write_read(integer r);
        begin
            for (int i = 0; i < r; i++) begin
                if (!m_stalvl_2.almost_empty & !m_stalvl_1.almost_full & s_dstm_1.ready & m_dstm_2.valid) begin
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    m_dstm_2.ready = 1;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(1);
                    cnt++;
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    m_dstm_2.ready = 0;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(1);
                    cnt++;
                end
                else if (!m_stalvl_2.almost_empty & m_stalvl_1.almost_full & s_dstm_1.ready & m_dstm_2.valid) begin
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    m_dstm_2.ready = 1;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(1);
                    s_dstm_1.data = cnt;
                    m_dstm_2.ready = 0;
                    w_num_clock(2);
                end
                else if (m_stalvl_2.almost_empty & !m_stalvl_1.almost_full & s_dstm_1.ready & m_dstm_2.valid) begin
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    m_dstm_2.ready = 1;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(1);
                    cnt++;
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    m_dstm_2.ready = 0;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(1);
                    cnt++;
                end
                else if (!s_dstm_1.ready) begin
                    s_dstm_1.valid = 0;
                    m_dstm_2.ready = 1;
                    w_num_clock(2);
                    m_dstm_2.ready = 0;
                    w_num_clock(2);
                end
                else if (!m_dstm_2.valid) begin
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    m_dstm_2.ready = 0;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    cnt++;
                    w_num_clock(1);
                    s_dstm_1.data = cnt;
                    s_dstm_1.valid = 1;
                    w_num_clock(1);
                    s_dstm_1.valid = 0;
                    w_num_clock(1);
                    cnt++;
                end
            end
        end
    endtask
	always #`period_1 w_clk = ~w_clk;
	always #`period_2 r_clk = ~r_clk;
endmodule