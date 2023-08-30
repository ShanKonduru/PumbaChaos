@echo off

REM Download binary using wget
powershell -Command "(Invoke-WebRequest -Uri 'https://github.com/alexei-led/pumba/releases/download/0.9.7/pumba_windows_amd64' -OutFile 'pumba.exe')"

REM Make the Target direcotry
set TARGET_DIR=%cd%

REM Move binary to desired location
move pumba.exe %TARGET_DIR%

REM Add binary to system PATH
setx PATH "%PATH%;%TARGET_DIR%"

REM Display usage help
pumba --help
