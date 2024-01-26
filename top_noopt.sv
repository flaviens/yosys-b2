module top(out_data);
  wire [90:0] fullone_0;
  wire [90:0] fullone_1;
  wire [289:0] shiftout;
  output [31:0] out_data;
  wire [31:0] out_data;
  assign shiftout = fullone_0 << fullone_1;
  assign fullone_0 = '1;
  assign fullone_1 = '1;
  assign out_data[31:0] = shiftout[31:0];
endmodule
