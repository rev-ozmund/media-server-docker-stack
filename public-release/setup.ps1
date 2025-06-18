# Media Server Setup Script for Windows (Public Release)
Write-Host "Setting up Media Server directories..." -ForegroundColor Green

# Create config directory structure only (media directories should be created by the user)
$directories = @(
    "config\jellyfin",
    "config\qbittorrent", 
    "config\sonarr",
    "config\radarr",
    "config\bazarr",
    "config\navidrome",
    "config\jellyseerr",
    "config\jackett",
    "config\tautulli"
)

foreach ($dir in $directories) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force
        Write-Host "Created directory: $dir" -ForegroundColor Yellow
    } else {
        Write-Host "Directory already exists: $dir" -ForegroundColor Gray
    }
}

Write-Host "`nConfig directory structure created successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Create your media folders (e.g., D:\tv, D:\movies, D:\music, D:\downloads, etc.) if they do not exist." -ForegroundColor White
Write-Host "2. Edit docker-compose.yml to match your media folder locations if needed." -ForegroundColor White
Write-Host "3. Make sure Docker Desktop is running." -ForegroundColor White
Write-Host "4. Open PowerShell in this directory." -ForegroundColor White
Write-Host "5. Run: docker-compose up -d" -ForegroundColor White
Write-Host "6. Access your services at:" -ForegroundColor White
Write-Host "   - Jellyfin: http://localhost:8096" -ForegroundColor Yellow
Write-Host "   - qBittorrent: http://localhost:8080" -ForegroundColor Yellow
Write-Host "   - Sonarr: http://localhost:8989" -ForegroundColor Yellow
Write-Host "   - Radarr: http://localhost:7878" -ForegroundColor Yellow
Write-Host "   - Bazarr: http://localhost:6767" -ForegroundColor Yellow
Write-Host "   - Navidrome: http://localhost:4533" -ForegroundColor Yellow
Write-Host "   - Jellyseerr: http://localhost:5055" -ForegroundColor Yellow
Write-Host "   - Jackett: http://localhost:9117" -ForegroundColor Yellow
Write-Host "   - Tautulli: http://localhost:8181" -ForegroundColor Yellow
Write-Host ""
Write-Host "Note: Change all default passwords and do not expose admin interfaces directly to the internet!" -ForegroundColor Red 