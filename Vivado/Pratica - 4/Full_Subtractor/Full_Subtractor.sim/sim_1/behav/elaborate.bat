@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 92a2ee977a5e437197612b88f105ba03 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Subtractor_behav xil_defaultlib.tb_Subtractor -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
