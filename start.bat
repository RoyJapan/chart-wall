@echo off
cd /d "%~dp0"
echo Chart Wall: http://127.0.0.1:8765/
echo Close this window to stop.
start "" /min cmd /c "timeout /t 2 /nobreak >nul & start http://127.0.0.1:8765/"
python -m http.server 8765 --bind 127.0.0.1
