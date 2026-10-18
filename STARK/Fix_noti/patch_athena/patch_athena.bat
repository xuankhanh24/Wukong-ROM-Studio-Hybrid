@echo off
setlocal
call "%~dp0..\..\run_patch.bat" athena %*
exit /b %errorlevel%
