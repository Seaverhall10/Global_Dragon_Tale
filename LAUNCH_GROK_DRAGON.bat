@echo off
title Global Dragon Tale
cd /d "%~dp0"
set "CORE=C:\Users\Hp\Desktop\GrokBot Project Intelligence\project_grok_desk\core\Start-Grok-Desk.ps1"
if not exist "%CORE%" (
  echo Missing shared core: %CORE%
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%CORE%" -ProjectRoot "%CD%" %*
if errorlevel 1 (
  echo Launch failed.
  pause
)
