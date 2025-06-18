#!/bin/bash
# Universal Media Server Stack Launcher (Linux/Mac)
set -e

# Check for Docker
if ! command -v docker &> /dev/null; then
  echo "Docker is not installed. Please install Docker and try again."
  exit 1
fi

# Check for docker-compose
if ! command -v docker-compose &> /dev/null; then
  echo "docker-compose is not installed. Please install docker-compose and try again."
  exit 1
fi

# Run setup script
bash setup.sh

# Start Docker Compose stack
docker-compose up -d

echo
echo "All services are starting! Access them at:"
echo "  Jellyfin:     http://localhost:8096"
echo "  qBittorrent:  http://localhost:8080"
echo "  Sonarr:       http://localhost:8989"
echo "  Radarr:       http://localhost:7878"
echo "  Bazarr:       http://localhost:6767"
echo "  Navidrome:    http://localhost:4533"
echo "  Jellyseerr:   http://localhost:5055"
echo "  Jackett:      http://localhost:9117"
echo "  Tautulli:     http://localhost:8181"
echo 