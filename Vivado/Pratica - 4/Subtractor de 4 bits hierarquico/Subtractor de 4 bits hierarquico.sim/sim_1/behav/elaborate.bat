@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 3bf93e46ec534cc8add2c31010601c55 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Subtractor4bitsH_behav xil_defaultlib.tb_Subtractor4bitsH -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
