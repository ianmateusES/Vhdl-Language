@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 21591db9b9cf4410a482e6751d8ed04f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Adder_Subtractor_behav xil_defaultlib.tb_Adder_Subtractor -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
