@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto a061c7d67d664554a3263f4326b32e50 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Codificador_Portas_behav xil_defaultlib.tb_Codificador_Portas -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
