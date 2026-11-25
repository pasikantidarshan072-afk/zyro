# ZYRO — Cross-Platform AI Voice & Gesture Assistant (Ollama Powered)

ZYRO is a local-first, Jarvis-inspired AI assistant featuring a 3D particle HUD, `"Hey Zyro"` wake-word voice recognition, MediaPipe webcam hand-gesture controls, and cross-platform app launching for **PC (Windows/macOS/Linux)** and **Mobile (Android/iOS)**.

## Project Structure
```text
zyro-ai-assistant/
├── backend/
│   ├── main.py              # FastAPI + Ollama LLM router + PC OS app launcher
│   └── requirements.txt     # Python dependencies
├── frontend/
│   ├── index.html           # Futuristic HUD interface
│   ├── style.css            # Neon cyber-HUD styling
│   └── app.js               # 3D particle core, Web Speech API, MediaPipe hand tracking
├── mobile_app/
│   ├── pubspec.yaml         # Flutter dependencies
│   └── main.dart            # Native Android/iOS voice app + Intent/URL app launcher
├── start_zyro.bat           # Windows one-click launcher
├── start_zyro.sh            # macOS/Linux launcher
└── README.md
```

## 1. Prerequisites
1. Install **Ollama** from https://ollama.com and pull a fast tool-capable model:
   ```bash
   ollama pull llama3.2
   ollama serve
   ```
2. Install **Python 3.10+**.

## 2. Run on PC (Windows / macOS / Linux)
- **Windows:** Double-click `start_zyro.bat`
- **macOS / Linux:** Run `chmod +x start_zyro.sh && ./start_zyro.sh`
- Open **http://localhost:8000** in Chrome or Edge.
- Say **"Hey Zyro, open Chrome"** or **"Hey Zyro, open Calculator"**, or enable **Hand Gestures** to resize the 3D core with pinch gestures and swipe up to dismiss response cards.

## 3. Run on Mobile (Android & iOS)
### Option A: Instant Mobile Web HUD (No App Build Needed)
1. Find your PC's local Wi-Fi IP address (e.g., `192.168.1.100`).
2. On your phone's browser, open `http://192.168.1.100:8000`.
3. Tap the 3D core and speak commands (opens mobile web apps like YouTube, WhatsApp, Spotify, Gmail).
4. In Chrome or Edge on Android, use **Install ZYRO** to add it to the home screen. Safari on iOS can use **Share > Add to Home Screen**.

### Option B: Native Flutter Mobile App (Launches Installed Native Apps)
1. Install Flutter SDK (`flutter create zyro_mobile`).
2. Copy `mobile_app/pubspec.yaml` and `mobile_app/main.dart` into `zyro_mobile/lib/main.dart`.
3. Run `flutter pub get && flutter run` on your connected Android/iOS phone.
4. Tap the gear icon in the app bar and enter `http://<YOUR_PC_IP>:8000`.
