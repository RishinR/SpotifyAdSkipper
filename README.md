# SpotifyAdSkipper 🎵🚫

Automatically detects and skips Spotify ads by restarting the app on macOS using AppleScript.

## 💡 How It Works

Spotify doesn't expose ads through its public API, but most ads have either:
- No artist name
- Very short duration (e.g., < 30 seconds)

This script uses those clues to detect when an ad is playing. Once detected:
1. Spotify is closed.
2. Reopened after a delay.
3. Playback resumes.

## ⚙️ Features

- Detects and skips ads automatically
- Lightweight and non-intrusive
- Runs natively on macOS
- No extra software or plugins required

## 🚀 Getting Started

### Requirements

- macOS (tested on macOS Ventura and Sonoma)
- Spotify installed

### 1. Clone the Repository

```bash
git clone https://github.com/RihsinR/SpotifyAdSkipper.git
cd SpotifyAdSkipper
````

### 2. Open the Script

* Open `SpotifyAdSkipper.applescript` in **Script Editor**
* Press ▶️ to run, or save as an app:

  * File > Export > File Format: Application
  * Check: *Stay open after run handler*
  * Save as: `SpotifyAdSkipper.app`

### 3. Run at Login (Optional)

To make it run automatically on boot:

* Go to `System Settings > General > Login Items`
* Add the exported `SpotifyAdSkipper.app` to your login items

## ⚠️ Notes

* False positives may occur on short music tracks.
* This is a workaround, not a real ad blocker.

## 📄 License

[MIT License](LICENSE)

---

### ⚠️ Disclaimer

This project is for educational purposes only. Please respect Spotify’s terms of service.
