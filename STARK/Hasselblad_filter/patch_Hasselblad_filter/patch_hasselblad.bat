@echo off
setlocal
call "%~dp0..\..\run_patch.bat" hasselblad %*
exit /b %errorlevel%
