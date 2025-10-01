@echo off
REM =============================================================
REM Rock-Paper-Scissors Predictor - Dev Server
REM -------------------------------------------------------------
REM Double-click this file (start-dev.bat) to:
REM   1. Change to the folder where it lives.
REM   2. Install or update project dependencies (npm install).
REM   3. Start the Vite development server in a separate window.
REM   4. Wait briefly, then open the app in your default browser.
REM   5. Keep this window open so you can stop the server later.
REM -------------------------------------------------------------
REM When finished:
REM   - Press any key in THIS window to stop the server window.
REM =============================================================

cd /d %~dp0
call npm install

REM ---- Start the dev server in a new cmd window (NO --open here)
start "RPS Dev Server" cmd /k "npm run dev"

REM ---- Give the server a moment to start, then open the browser ONCE
timeout /t 2 /nobreak >nul
start "" http://localhost:5173/

echo.
echo =============================================================
echo Development server is running at: http://localhost:5173/
echo Leave this window open while you work.
echo When finished, press any key here to stop the server.
echo =============================================================
echo.
pause

REM ---- Stop the dev server window when a key is pressed
taskkill /F /T /FI "WINDOWTITLE eq RPS Dev Server" >nul 2>&1
