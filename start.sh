#!/bin/bash

set -e

echo "🐳 Starting Java Applet environment..."

Xvfb :99 -screen 0 1024x768x24 &
sleep 2

x11vnc \
    -display :99 \
    -forever \
    -shared \
    -nopw \
    -rfbport 5900 &

websockify \
    --web=/usr/share/novnc/ \
    6080 \
    localhost:5900 &

JAVA_FILE=$(find /app -maxdepth 1 -type f -name "*.java" | head -n 1)
HTML_FILE=$(find /app -maxdepth 1 -type f -name "*.html" | head -n 1)

if [ -z "$JAVA_FILE" ]; then
    echo "❌ No Java file found!"
    exit 1
fi

if [ -z "$HTML_FILE" ]; then
    echo "❌ No HTML file found!"
    exit 1
fi

echo "☕ Java: $(basename "$JAVA_FILE")"
echo "🌐 HTML: $(basename "$HTML_FILE")"

echo "🔨 Compiling Java..."

javac "$JAVA_FILE"

echo "✅ Compilation successful!"

echo "🚀 Starting AppletViewer..."

cd /app
exec appletviewer "$(basename "$HTML_FILE")"