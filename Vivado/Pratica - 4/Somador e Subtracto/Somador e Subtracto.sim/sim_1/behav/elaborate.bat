@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 8e886bc9c62743dbb2bb2c33e2b4102f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Somador_Subtractor_behav xil_defaultlib.tb_Somador_Subtractor -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
