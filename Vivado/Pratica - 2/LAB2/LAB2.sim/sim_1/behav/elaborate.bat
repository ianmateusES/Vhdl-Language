@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 2fe5084e5d4a49be9ebb0552b986bb67 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_LAB2_behav xil_defaultlib.tb_LAB2 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
