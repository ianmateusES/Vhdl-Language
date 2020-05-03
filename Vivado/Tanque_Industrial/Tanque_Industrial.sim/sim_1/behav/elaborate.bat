@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto ef15268f8d554983ac63a10b752e34e3 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_tanque_behav xil_defaultlib.tb_tanque -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
