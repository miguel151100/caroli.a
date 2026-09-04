#!/usr/bin/env bash
set -e

echo "======================================================="
echo "🚀 INICIANDO INSTALACIÓN DE SUPERPODERES EN CAROL (RENDER)"
echo "======================================================="

# Actualizar gestor de paquetes pip
python3 -m pip install --upgrade pip

# Instalar todos los paquetes científicos, matemáticos y de animación
echo "📦 Instalando Manim, NumPy, SciPy, Matplotlib, SymPy, Pandas, Pillow, Scraping..."
pip install -r requirements.txt || true

# Asegurar FFmpeg en el sistema para Manim
if ! command -v ffmpeg &> /dev/null; then
    echo "🎥 Configurando FFmpeg para renderizado de video..."
    mkdir -p ~/.local/bin
    curl -sL https://github.com/eugeneware/ffmpeg-static/releases/latest/download/ffmpeg-linux-x64 -o ~/.local/bin/ffmpeg || true
    chmod +x ~/.local/bin/ffmpeg || true
    export PATH="$HOME/.local/bin:$PATH"
fi

echo "======================================================="
echo "✨ ¡CAROL EQUIPADA CON TODOS LOS SUPERPODERES EN RENDER!"
echo "======================================================="
