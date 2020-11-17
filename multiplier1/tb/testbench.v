//`timescale 1ns

module testbench ();

   wire CLK_i;
   wire [31:0] DATA_i;
   wire [31:0] FP_Z_i;

   clk_gen CG(	.CLK(CLK_i));

   data_maker SM(.CLK(CLK_i),
				.DATA(DATA_i));

   FPmul UUT(	.clk(CLK_i),
				.FP_A(DATA_i),
				.FP_B(DATA_i),
				.FP_Z(FP_Z_i));

   data_sink DS(.CLK(CLK_i),
				.FP_Z(FP_Z_i));   

endmodule
