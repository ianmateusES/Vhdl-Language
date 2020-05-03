@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto f5cc94739bd84f0b998ff0ee3a9ac771 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Led_behav xil_defaultlib.tb_Led -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
