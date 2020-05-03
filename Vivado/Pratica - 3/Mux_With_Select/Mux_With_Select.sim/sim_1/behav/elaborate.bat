@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 453533a028ba401f92b0c7ef7498f0b9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_MUX_behav xil_defaultlib.tb_MUX -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
