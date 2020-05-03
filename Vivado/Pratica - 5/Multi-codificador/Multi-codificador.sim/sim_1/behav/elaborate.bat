@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 5a6aabd8d1ba49aca63f314d98e5d198 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_codificador_behav xil_defaultlib.tb_codificador -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
