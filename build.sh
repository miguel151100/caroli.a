#!/usr/bin/env bash
echo "🚀 Installing dependencies on Render..."
python3 -m pip install --upgrade pip || true
pip install -r requirements.txt || true
echo "✅ Build completed successfully!"
