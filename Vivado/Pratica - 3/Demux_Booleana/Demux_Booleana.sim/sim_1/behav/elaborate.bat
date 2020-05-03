@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 342f2a584d3e4333843fc3125912b099 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_DEMUX_behav xil_defaultlib.tb_DEMUX -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
