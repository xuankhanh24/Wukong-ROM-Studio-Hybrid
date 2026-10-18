@echo off
setlocal
call "%~dp0..\..\run_patch.bat" bubbles %*
exit /b %errorlevel%
