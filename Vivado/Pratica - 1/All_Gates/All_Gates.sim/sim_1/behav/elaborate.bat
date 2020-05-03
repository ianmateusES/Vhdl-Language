@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 498d7a9029554b6588269c3cda5ea4c7 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_ALL_GATES_behav xil_defaultlib.tb_ALL_GATES -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
