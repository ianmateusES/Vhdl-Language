@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim tb_DIRECIONAL_behav -key {Behavioral:sim_1:Functional:tb_DIRECIONAL} -tclbatch tb_DIRECIONAL.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
