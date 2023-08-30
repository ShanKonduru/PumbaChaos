@echo off

:loop
cls
docker ps -a
timeout /t 1 > nul
goto loop
