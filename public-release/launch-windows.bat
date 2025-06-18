@echo off
REM Universal Media Server Stack Launcher (Windows)

REM Check for Docker Desktop
where docker >nul 2>nul
if %errorlevel% neq 0 (
    echo Docker is not installed or not in PATH. Please install Docker Desktop and try again.
    pause
    exit /b 1
)

REM Run PowerShell setup script
powershell -NoProfile -ExecutionPolicy Bypass -File setup.ps1
if %errorlevel% neq 0 (
    echo Setup script failed. Please check for errors above.
    pause
    exit /b 1
)

REM Start Docker Compose stack
docker-compose up -d
if %errorlevel% neq 0 (
    echo Docker Compose failed to start the stack. Please check for errors above.
    pause
    exit /b 1
)

echo.
echo All services are starting! Access them at:
echo   Jellyfin:     http://localhost:8096
echo   qBittorrent:  http://localhost:8080
echo   Sonarr:       http://localhost:8989
echo   Radarr:       http://localhost:7878
echo   Bazarr:       http://localhost:6767
echo   Navidrome:    http://localhost:4533
echo   Jellyseerr:   http://localhost:5055
echo   Jackett:      http://localhost:9117
echo   Tautulli:     http://localhost:8181
echo.
pause 