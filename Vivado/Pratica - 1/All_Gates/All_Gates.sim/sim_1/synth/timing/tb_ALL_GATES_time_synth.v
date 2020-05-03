// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Apr 03 18:54:43 2017
// Host        : Ian-Mateus12 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/ianma/Documents/Simula/All_Gates/All_Gates.sim/sim_1/synth/timing/tb_ALL_GATES_time_synth.v
// Design      : All_Gates
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module All_Gates
   (A,
    B,
    X1,
    X2,
    X3,
    X4,
    X5,
    X6,
    X7);
  input A;
  input B;
  output X1;
  output X2;
  output X3;
  output X4;
  output X5;
  output X6;
  output X7;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire X1;
  wire X1_OBUF;
  wire X2;
  wire X2_OBUF;
  wire X3;
  wire X3_OBUF;
  wire X4;
  wire X4_OBUF;
  wire X5;
  wire X5_OBUF;
  wire X6;
  wire X6_OBUF;
  wire X7;
  wire X7_OBUF;

initial begin
 $sdf_annotate("tb_ALL_GATES_time_synth.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  OBUF X1_OBUF_inst
       (.I(X1_OBUF),
        .O(X1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    X1_OBUF_inst_i_1
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .O(X1_OBUF));
  OBUF X2_OBUF_inst
       (.I(X2_OBUF),
        .O(X2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    X2_OBUF_inst_i_1
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .O(X2_OBUF));
  OBUF X3_OBUF_inst
       (.I(X3_OBUF),
        .O(X3));
  LUT1 #(
    .INIT(2'h1)) 
    X3_OBUF_inst_i_1
       (.I0(A_IBUF),
        .O(X3_OBUF));
  OBUF X4_OBUF_inst
       (.I(X4_OBUF),
        .O(X4));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    X4_OBUF_inst_i_1
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .O(X4_OBUF));
  OBUF X5_OBUF_inst
       (.I(X5_OBUF),
        .O(X5));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    X5_OBUF_inst_i_1
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .O(X5_OBUF));
  OBUF X6_OBUF_inst
       (.I(X6_OBUF),
        .O(X6));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    X6_OBUF_inst_i_1
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .O(X6_OBUF));
  OBUF X7_OBUF_inst
       (.I(X7_OBUF),
        .O(X7));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    X7_OBUF_inst_i_1
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .O(X7_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
