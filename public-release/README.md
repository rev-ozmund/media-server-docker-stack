# Universal Media Server Docker Stack (Public Release)

A complete, self-hosted media server solution using Docker Compose. This stack includes Jellyfin, qBittorrent, Navidrome, Jackett, Sonarr, Radarr, Bazarr, Jellyseerr, and Tautulli. Now works on Windows, Linux, and Mac with double-click launchers for all platforms.

## Services Included

- **Jellyfin** (8096): Media server for streaming movies, TV shows, music, and photos
- **qBittorrent** (8080): Torrent client for downloading media
- **Sonarr** (8989): TV show management and automation
- **Radarr** (7878): Movie management and automation
- **Bazarr** (6767): Subtitle management
- **Navidrome** (4533): Music server for streaming your music library
- **Jellyseerr** (5055): Request management system for movies and TV shows
- **Jackett** (9117): Indexer proxy for private/public torrent trackers
- **Tautulli** (8181): Analytics and monitoring (optional)

## Universal Quick Start

### 1. Download & Edit .env
- Copy `.env.example` to `.env` and edit the paths to match your system (Windows, Linux, or Mac).
- Example for Windows:
  ```env
  TV_DIR=D:/tv
  MOVIES_DIR=D:/movies
  MOVIES_OVERFLOW_DIR=D:/movies_overflow
  MUSIC_DIR=D:/music
  DOWNLOADS_DIR=D:/downloads
  CONFIG_DIR=./config
  TZ=America/New_York
  PUID=1000
  PGID=1000
  ```
- Example for Linux/Mac:
  ```env
  TV_DIR=/mnt/tv
  MOVIES_DIR=/mnt/movies
  MOVIES_OVERFLOW_DIR=/mnt/movies_overflow
  MUSIC_DIR=/mnt/music
  DOWNLOADS_DIR=/mnt/downloads
  CONFIG_DIR=./config
  TZ=Etc/UTC
  PUID=1000
  PGID=1000
  ```

### 2. Double-Click to Launch
- **Windows:** Double-click `launch-windows.bat` (runs setup and starts everything)
- **Linux/Mac:** Double-click or run `launch-unix.sh` (make sure it's executable: `chmod +x launch-unix.sh`)

### 3. Access Your Services
- Jellyfin: http://localhost:8096
- qBittorrent: http://localhost:8080
- Sonarr: http://localhost:8989
- Radarr: http://localhost:7878
- Bazarr: http://localhost:6767
- Navidrome: http://localhost:4533
- Jellyseerr: http://localhost:5055
- Jackett: http://localhost:9117
- Tautulli: http://localhost:8181

## Security Best Practices
- **Do NOT expose admin interfaces (qBittorrent, Sonarr, Radarr, Jackett, etc.) directly to the internet.**
- Use a reverse proxy (Nginx/Traefik) with HTTPS and authentication for any public access.
- Change all default passwords on first run.
- Use strong, unique passwords for all services.
- Regularly update Docker images and your stack.
- Restrict access to your config and media folders.
- Consider using a VPN for torrenting if required by your ISP or local laws.

## Configuration

### Directory Structure
```
public-release/
├── config/
│   ├── jellyfin/
│   ├── qbittorrent/
│   ├── sonarr/
│   ├── radarr/
│   ├── bazarr/
│   ├── navidrome/
│   ├── jellyseerr/
│   ├── jackett/
│   └── tautulli/
├── docker-compose.yml
├── .env.example
├── .env (you create this)
├── setup.ps1
├── setup.sh
├── launch-windows.bat
├── launch-unix.sh
└── README.md
```

## Initial Setup Guide

1. **Jellyfin:** Add `/media/movies`, `/media/movies_overflow`, `/media/tv`, `/music` as libraries.
2. **qBittorrent:** Change the default password and set download path to `/downloads`.
3. **Sonarr/Radarr:** Add qBittorrent as a download client, add root folders, and configure indexers via Jackett.
4. **Bazarr:** Connect to Sonarr/Radarr and configure subtitle providers.
5. **Navidrome:** Log in (default: admin/admin), change password, and scan `/music`.
6. **Jackett:** Add your private tracker credentials, copy the Torznab feed URL and API key, and add as a custom indexer in Sonarr/Radarr.
7. **Jellyseerr:** Connect to Jellyfin, Sonarr, and Radarr using their internal Docker network URLs and API keys.

## Useful Commands

```bash
# Start all services
docker-compose up -d

# Stop all services
docker-compose down

# View logs
docker-compose logs -f [service-name]

# Restart a specific service
docker-compose restart [service-name]

# Update all images
docker-compose pull
docker-compose up -d

# Backup configurations
tar -czf backup-$(date +%Y%m%d).tar.gz config/
```

## Troubleshooting
- If you encounter permission errors, ensure your user has access to the config and media directories.
- If ports are already in use, modify the port mappings in `docker-compose.yml`.
- For more help, see the documentation for each service.

## License
This project is open source and available under the MIT License. 