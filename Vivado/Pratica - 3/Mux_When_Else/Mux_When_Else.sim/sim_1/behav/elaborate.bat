@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto d5c8f137e97d490cafff54c3111a672b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_MUX_behav xil_defaultlib.tb_MUX -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
