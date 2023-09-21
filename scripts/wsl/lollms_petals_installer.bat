@echo off

:: Check if WSL is installed
wsl --list >nul 2>&1
if %errorlevel% neq 0 (
  echo WSL is not installed. Installing...
  echo Installing Ubuntu 20.04 LTS...
  wsl --install -d Ubuntu-20.04
  wsl --set-default-version 2
) else (
  echo WSL is already installed.
)

:: Execute the .sh script
wsl.exe -d Ubuntu-20.04 ./install_script.sh

echo Installation and script execution complete!
pause