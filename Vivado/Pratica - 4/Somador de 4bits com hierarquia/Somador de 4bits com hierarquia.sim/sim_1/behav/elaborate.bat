@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto a777163c072b4bcc89f2c578e6686bc1 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Somador4bitsH_behav xil_defaultlib.tb_Somador4bitsH -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
