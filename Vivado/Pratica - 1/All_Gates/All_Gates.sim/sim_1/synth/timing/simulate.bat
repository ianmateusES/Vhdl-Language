@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim tb_ALL_GATES_time_synth -key {Post-Synthesis:sim_1:Timing:tb_ALL_GATES} -tclbatch tb_ALL_GATES.tcl -view C:/Users/ianma/Documents/Simula/All_Gates/tb_ALL_GATES_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
