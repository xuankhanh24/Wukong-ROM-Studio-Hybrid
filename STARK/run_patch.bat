@echo off
setlocal
set "PATCH_PYTHON=%~dp0..\..\Runtime\Python\python.exe"
if exist "%PATCH_PYTHON%" goto BUNDLED
where python >nul 2>&1
if not errorlevel 1 goto SYSTEMPYTHON
where py >nul 2>&1
if not errorlevel 1 goto PYLAUNCHER
echo [ERROR] Python 3.10+ is required. Install Python or repair the desktop Runtime.
exit /b 1
:SYSTEMPYTHON
python "%~dp0run_patch.py" %*
exit /b %errorlevel%
:PYLAUNCHER
py -3 "%~dp0run_patch.py" %*
exit /b %errorlevel%
:BUNDLED
"%PATCH_PYTHON%" "%~dp0run_patch.py" %*
exit /b %errorlevel%
