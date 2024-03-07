@echo off

echo.
echo ========================
echo Welcome to Projex
echo ========================
echo.

set /p username=Enter your username (👤): 
set /p email=Enter your email address (📧): 

echo.
echo Setting global email address...
call :gitconfig "%email%" "user.email"

echo Setting global username...
call :gitconfig "%username%" "user.name"

echo.
echo Git global configuration completed.
echo.

echo Showing Git configurations:
git config --list

exit /b

:gitconfig
git config --global %2 "%~1"
exit /b
