@echo off
title Global Dragon Tale Status
cd /d "%~dp0"
set "CORE=C:\Users\Hp\Desktop\GrokBot Project Intelligence\project_grok_desk\core\Refresh-ProjectDesk.ps1"
if not exist "%CORE%" (
  echo Missing shared core: %CORE%
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%CORE%" -ProjectRoot "%CD%"
echo.
if exist "%CD%\PROJECT_STATUS.md" (
  powershell -NoProfile -Command "Get-Content -LiteralPath '%CD%\PROJECT_STATUS.md' -TotalCount 45"
)
pause
