@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim tb_Pratica_2_completa_time_synth -key {Post-Synthesis:sim_1:Timing:tb_Pratica_2_completa} -tclbatch tb_Pratica_2_completa.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
