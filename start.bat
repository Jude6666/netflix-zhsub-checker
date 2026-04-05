@echo off
cd /d "%~dp0"
echo Starting server...
start "" "http://localhost:3000"
node server.js
pause
