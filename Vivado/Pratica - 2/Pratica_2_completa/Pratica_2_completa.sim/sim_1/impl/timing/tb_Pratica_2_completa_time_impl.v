// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sat Apr 08 18:13:15 2017
// Host        : Ian-Mateus12 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/ianma/Documents/Simula/Pratica_2_completa/Pratica_2_completa.sim/sim_1/impl/timing/tb_Pratica_2_completa_time_impl.v
// Design      : Pratica_2_completa
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "2f87379d" *) 
(* NotValidForBitStream *)
module Pratica_2_completa
   (a,
    b,
    c,
    d,
    s1,
    s2,
    s3,
    s4,
    s5,
    s6,
    s7,
    s8,
    s9,
    s10);
  input a;
  input b;
  input c;
  input d;
  output s1;
  output s2;
  output s3;
  output s4;
  output s5;
  output s6;
  output s7;
  output s8;
  output s9;
  output s10;

  wire a;
  wire a_IBUF;
  wire b;
  wire c;
  wire c_IBUF;
  wire d;
  wire d_IBUF;
  wire s1;
  wire s10;
  wire s10_OBUF;
  wire s1_OBUF;
  wire s2;
  wire s2_OBUF;
  wire s3;
  wire s3_OBUF;
  wire s4;
  wire s4_OBUF;
  wire s5;
  wire s5_OBUF;
  wire s6;
  wire s6_OBUF;
  wire s7;
  wire s7_OBUF;
  wire s8;
  wire s8_OBUF;
  wire s9;
  wire s9_OBUF;

initial begin
 $sdf_annotate("tb_Pratica_2_completa_time_impl.sdf",,,,"tool_control");
end
  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  IBUF b_IBUF_inst
       (.I(b),
        .O(s6_OBUF));
  IBUF c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  IBUF d_IBUF_inst
       (.I(d),
        .O(d_IBUF));
  OBUF s10_OBUF_inst
       (.I(s10_OBUF),
        .O(s10));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD89D)) 
    s10_OBUF_inst_i_1
       (.I0(s6_OBUF),
        .I1(a_IBUF),
        .I2(c_IBUF),
        .I3(d_IBUF),
        .O(s10_OBUF));
  OBUF s1_OBUF_inst
       (.I(s1_OBUF),
        .O(s1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    s1_OBUF_inst_i_1
       (.I0(s6_OBUF),
        .I1(a_IBUF),
        .I2(c_IBUF),
        .O(s1_OBUF));
  OBUF s2_OBUF_inst
       (.I(s2_OBUF),
        .O(s2));
  LUT2 #(
    .INIT(4'hE)) 
    s2_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(c_IBUF),
        .O(s2_OBUF));
  OBUF s3_OBUF_inst
       (.I(s3_OBUF),
        .O(s3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s3_OBUF_inst_i_1
       (.I0(s6_OBUF),
        .I1(a_IBUF),
        .O(s3_OBUF));
  OBUF s4_OBUF_inst
       (.I(s4_OBUF),
        .O(s4));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    s4_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(s6_OBUF),
        .I2(c_IBUF),
        .O(s4_OBUF));
  OBUF s5_OBUF_inst
       (.I(s5_OBUF),
        .O(s5));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    s5_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(s6_OBUF),
        .I2(c_IBUF),
        .I3(d_IBUF),
        .O(s5_OBUF));
  OBUF s6_OBUF_inst
       (.I(s6_OBUF),
        .O(s6));
  OBUF s7_OBUF_inst
       (.I(s7_OBUF),
        .O(s7));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    s7_OBUF_inst_i_1
       (.I0(c_IBUF),
        .I1(d_IBUF),
        .I2(s6_OBUF),
        .I3(a_IBUF),
        .O(s7_OBUF));
  OBUF s8_OBUF_inst
       (.I(s8_OBUF),
        .O(s8));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    s8_OBUF_inst_i_1
       (.I0(s6_OBUF),
        .I1(a_IBUF),
        .I2(c_IBUF),
        .O(s8_OBUF));
  OBUF s9_OBUF_inst
       (.I(s9_OBUF),
        .O(s9));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEBD7)) 
    s9_OBUF_inst_i_1
       (.I0(c_IBUF),
        .I1(a_IBUF),
        .I2(s6_OBUF),
        .I3(d_IBUF),
        .O(s9_OBUF));
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
