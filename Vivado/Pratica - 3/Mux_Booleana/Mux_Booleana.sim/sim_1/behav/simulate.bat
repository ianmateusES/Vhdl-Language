@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim tb_Mux_Booleana_behav -key {Behavioral:sim_1:Functional:tb_Mux_Booleana} -tclbatch tb_Mux_Booleana.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
