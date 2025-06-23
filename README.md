# Universal Media Server Docker Stack
> A one-click, cross-platform, self-hosted media server stack for everyone.

## 🚀 Features
- **Universal**: Works seamlessly on Windows, Linux, and Mac
- **One-click launchers**: Double-click to set up and start everything
- **All-in-one**: Complete media ecosystem with movies, TV, music, requests, subtitles, and analytics
- **Easy to configure**: Just edit a .env file to customize your paths
- **Production-ready**: Includes both traditional and modern indexer management options

## 📦 Included Services
- **Jellyfin** – Media streaming server for movies, TV shows, music, and photos
- **qBittorrent** – Torrent client for automated downloads
- **Sonarr** – TV show management and automation
- **Radarr** – Movie management and automation
- **Bazarr** – Subtitle management and automation
- **Navidrome** – Music streaming server with web and mobile apps
- **Jackett** – Traditional indexer proxy for private/public torrent trackers
- **Prowlarr** – Modern indexer management with native *arr integration
- **Jellyseerr** – Media request management system
- **Tautulli** – Analytics and monitoring for your media server

## 🎯 What You Get
A complete, automated media pipeline that:
- Monitors for new releases of your favorite shows and movies
- Automatically downloads them via torrents
- Organizes and renames files properly
- Updates your media library
- Provides a beautiful streaming interface
- Handles requests from family/friends
- Manages subtitles automatically
- Gives you detailed analytics

## 📖 Get Started
1. Navigate to the `public-release/` folder in this repository
2. Read the detailed `README.md` inside `public-release/` for complete setup instructions
3. Download or clone the `public-release/` folder to your system
4. Edit the `.env` file with your media paths
5. Double-click the launcher for your operating system:
   - **Windows**: `launch-windows.bat`
   - **Linux/Mac**: `launch-unix.sh`

## 🛡️ Security Best Practices
- **Change all default passwords** immediately after first run
- **Never expose admin interfaces** (qBittorrent, Sonarr, Radarr, etc.) directly to the internet
- **Use a reverse proxy** with HTTPS and authentication for any public access
- **Keep your stack updated** regularly for security patches
- See `public-release/README.md` for comprehensive security guidelines

## 🆚 Indexer Options
This stack includes both traditional and modern indexer management:
- **Jackett**: Traditional indexer proxy - manually configure each *arr app
- **Prowlarr**: Modern approach - automatically syncs indexers to all *arr apps

Choose the approach that works best for your workflow, or run both side-by-side.

## ❤️ Contributing
We welcome contributions! Whether it's:
- 🐛 Bug reports and fixes
- ✨ Feature requests and implementations
- 📖 Documentation improvements
- 💡 Suggestions for new services

Open an issue or submit a pull request to help improve the stack for everyone.

## 📄 License
This project is open source and available under the [MIT License](LICENSE).

---
*Built with ❤️ for the self-hosting community*
