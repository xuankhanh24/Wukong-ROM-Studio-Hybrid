@echo off
setlocal
call "%~dp0..\..\run_patch.bat" settings %*
exit /b %errorlevel%
