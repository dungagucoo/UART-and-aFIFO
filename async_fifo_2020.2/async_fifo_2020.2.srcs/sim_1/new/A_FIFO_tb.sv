`define almost_full_cfg 5
`define almost_empty_cfg 3
`define period_1 10
`define period_2 5

module a_FIFO_tb();
    parameter WIDTH = 32;
	parameter ASIZE = 4;
	parameter DEPTH = 2**ASIZE;

    logic s_rst_n;
    logic r_clk, r_rst_n; 
    logic w_clk, w_rst_n;
    
    logic wr_valid;
    logic [WIDTH - 1 : 0] wr_data;
    logic wr_ready;
    logic full;
    logic empty;
    logic almost_full;
    logic almost_empty;
    logic cfg_afull;
    logic cfg_aempty;
    logic rd_valid;
    logic [WIDTH - 1 : 0] rd_data;
    logic rd_ready;

	integer cnt=10;

	A_FIFO 
	#(.WIDTH(WIDTH), .ASIZE(ASIZE), .DEPTH(DEPTH))csv_afifo_uut
	(
	    .*
	);
	// stimulus signal
    initial begin
        r_clk = 0;
        w_clk = 0;
        wr_valid = 0;
        rd_ready = 0;
        s_rst_n = 0;
        w_rst_n = 0;
        r_rst_n = 0;
        wr_data = 0;
        
        cfg_afull = `almost_full_cfg;
        cfg_aempty = `almost_empty_cfg;
        
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
                if (almost_full & wr_ready) begin
                    wr_data = cnt;
                    wr_valid = 1;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(2);
                    cnt++;
                end
                else if (!almost_full & wr_ready) begin
                    wr_data = cnt;
                    wr_valid = 1;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(1);
                    cnt++;
                end 
                else begin
                    wr_valid = 0;
                    w_num_clock(1); 
                end     
            end
        end
    endtask
    
    task num_read(integer r);
        begin
            for (int i = 0; i < r; i++) begin
                if (almost_empty & rd_valid) begin
                    rd_ready = 1;
                    r_num_clock(1);
                    rd_ready = 0;
                    r_num_clock(2);
                end 
                else if (!almost_empty & rd_valid) begin
                    rd_ready = 1;
                    r_num_clock(1);
                    rd_ready = 0;
                    r_num_clock(1);
                end
                else begin
                    rd_ready = 0;
                    r_num_clock(1);
                end
            end
        end
    endtask

    task num_write_read(integer r);
        begin
            for (int i = 0; i < r; i++) begin
                if (!almost_empty & !almost_full & wr_ready & rd_valid) begin
                    wr_data = cnt;
                    wr_valid = 1;
                    rd_ready = 1;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(1);
                    cnt++;
                    wr_data = cnt;
                    wr_valid = 1;
                    rd_ready = 0;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(1);
                    cnt++;
                end
                else if (!almost_empty & almost_full & wr_ready & rd_valid) begin
                    wr_data = cnt;
                    wr_valid = 1;
                    rd_ready = 1;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(1);
                    wr_data = cnt;
                    rd_ready = 0;
                    w_num_clock(2);
                end
                else if (almost_empty & !almost_full & wr_ready & rd_valid) begin
                    wr_data = cnt;
                    wr_valid = 1;
                    rd_ready = 1;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(1);
                    cnt++;
                    wr_data = cnt;
                    wr_valid = 1;
                    rd_ready = 0;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(1);
                    cnt++;
                end
                else if (!wr_ready) begin
                    wr_valid = 0;
                    rd_ready = 1;
                    w_num_clock(2);
                    rd_ready = 0;
                    w_num_clock(2);
                end
                else if (!rd_valid) begin
                    wr_data = cnt;
                    wr_valid = 1;
                    rd_ready = 0;
                    w_num_clock(1);
                    wr_valid = 0;
                    cnt++;
                    w_num_clock(1);
                    wr_data = cnt;
                    wr_valid = 1;
                    w_num_clock(1);
                    wr_valid = 0;
                    w_num_clock(1);
                    cnt++;
                end
            end
        end
    endtask
	always #`period_1 w_clk = ~w_clk;
	always #`period_2 r_clk = ~r_clk;
endmodule