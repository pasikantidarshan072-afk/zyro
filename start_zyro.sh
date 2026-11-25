#!/bin/bash
echo "Starting ZYRO AI Core..."
if ! command -v ollama >/dev/null 2>&1; then
  echo "Ollama was not found. Install Ollama and run 'ollama pull llama3.2' first."
  exit 1
fi
if ! ollama list | grep -qi 'llama3.2'; then
  echo "Pulling llama3.2..."
  ollama pull llama3.2
fi
cd backend
python3 -m pip install -r requirements.txt
python3 -m uvicorn main:app --host 0.0.0.0 --port 8000
