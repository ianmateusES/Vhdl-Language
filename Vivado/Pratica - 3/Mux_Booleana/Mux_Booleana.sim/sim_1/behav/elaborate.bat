@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 73b81d2cb936461385fb70d80e606166 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Mux_Booleana_behav xil_defaultlib.tb_Mux_Booleana -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
