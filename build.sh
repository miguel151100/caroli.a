#!/usr/bin/env bash
echo "🚀 Installing dependencies on Render..."
pip install --upgrade pip
pip install -r requirements.txt
pip install --no-cache-dir numpy matplotlib || true
echo "✅ Build completed!"
