@echo off
echo Starting ZYRO AI Core...
where ollama >nul 2>nul
if errorlevel 1 (
  echo Ollama was not found. Install Ollama and run "ollama pull llama3.2" first.
  pause
  exit /b 1
)
ollama list | findstr /I /C:"llama3.2" >nul
if errorlevel 1 (
  echo Pulling llama3.2...
  ollama pull llama3.2
)
cd backend
python -m pip install -r requirements.txt
start "" http://localhost:8000
python -m uvicorn main:app --host 0.0.0.0 --port 8000
