//`timescale 1ns

module testbench ();

   wire CLK_i;
   wire RST_n_i;
   wire [31:0] FP_A_i;
   wire [31:0] FP_B_i;
   wire [31:0] FP_Z_i;
   wire END_SIM_i;

   clk_gen CG(	.END_SIM(END_SIM_i),
				.RST_n(RST_n_i),
				.CLK(CLK_i));

   data_maker SM(.CLK(CLK_i),
				.FP_A(FP_A_i),
				.FP_B(FP_B_i),
				.RST_n(RST_n_i),
				.END_SIM(END_SIM_i));

   FPmul UUT(	.clk(CLK_i),
				.FP_A(FP_A_i),
				.FP_B(FP_B_i),
				.FP_Z(FP_Z_i));

   data_sink DS(.CLK(CLK_i),
				.RST_n(RST_n_i),
				.FP_Z(FP_Z_i));   

endmodule