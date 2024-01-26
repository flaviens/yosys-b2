module testbench;

  bit [31:0] out_data;
  top dut(out_data);

  initial begin
    #1;

    $display("Output: %x", out_data[31:0]);
  end
endmodule
