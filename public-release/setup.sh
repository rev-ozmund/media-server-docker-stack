#!/bin/bash

# Media Server Setup Script (Linux/Mac)
set -e

# Load .env if present
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
else
  echo "No .env file found. Using defaults from .env.example."
  export $(grep -v '^#' .env.example | xargs)
fi

# Create config directories
for dir in jellyfin qbittorrent sonarr radarr bazarr navidrome jellyseerr jackett tautulli; do
  mkdir -p "${CONFIG_DIR:-./config}/$dir"
done

# Create media directories
mkdir -p "${TV_DIR:-/mnt/tv}" "${MOVIES_DIR:-/mnt/movies}" "${MOVIES_OVERFLOW_DIR:-/mnt/movies_overflow}" "${MUSIC_DIR:-/mnt/music}" "${DOWNLOADS_DIR:-/mnt/downloads}"

echo "\nConfig and media directories created!"
echo ""
echo "Next steps:"
echo "1. Edit .env to match your media folder locations if needed."
echo "2. Run: docker-compose up -d"
echo "3. Access your services at:"
echo "   - Jellyfin: http://localhost:8096"
echo "   - qBittorrent: http://localhost:8080"
echo "   - Sonarr: http://localhost:8989"
echo "   - Radarr: http://localhost:7878"
echo "   - Bazarr: http://localhost:6767"
echo "   - Navidrome: http://localhost:4533"
echo "   - Jellyseerr: http://localhost:5055"
echo "   - Jackett: http://localhost:9117"
echo "   - Tautulli: http://localhost:8181"
echo ""
echo "Note: Change all default passwords and do not expose admin interfaces directly to the internet!" 