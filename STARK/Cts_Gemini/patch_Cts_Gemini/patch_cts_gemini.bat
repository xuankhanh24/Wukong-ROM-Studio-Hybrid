@echo off
setlocal
call "%~dp0..\..\run_patch.bat" cts %*
exit /b %errorlevel%
