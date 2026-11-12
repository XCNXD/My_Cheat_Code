@echo off
cd /d "%~dp0"

net session >nul 2>&1
if %errorlevel% == 0 (
    title Administrator: Command Prompt
    echo [Admin Mode] Inherited Administrator privileges!
) else (
    title Normal: Command Prompt
    echo [User Mode] Running with standard privileges.
)

cmd /k
