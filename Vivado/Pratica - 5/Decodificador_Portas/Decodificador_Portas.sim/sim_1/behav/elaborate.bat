@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 8dd09d6d472d402fb462774b068721bb -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_decodificador_behav xil_defaultlib.tb_decodificador -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
