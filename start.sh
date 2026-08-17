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

echo "☕ Compiling Java..."

javac HelloApplet.java

echo "✅ Compilation successful!"

ls -lh *.class

echo "🚀 Starting AppletViewer..."

appletviewer index.html











# #!/bin/bash

# set -e

# echo "🐳 Starting Java Applet environment..."

# echo "🖥️ Starting virtual X server..."
# Xvfb :99 -screen 0 1024x768x24 &

# sleep 2

# echo "📡 Starting VNC server..."
# x11vnc \
#     -display :99 \
#     -forever \
#     -shared \
#     -nopw \
#     -rfbport 5900 &

# echo "🌐 Starting noVNC..."
# websockify \
#     --web=/usr/share/novnc/ \
#     6080 \
#     localhost:5900 &

# sleep 2

# echo "☕ Compiling Applet..."
# javac *.java

# echo "🚀 Starting AppletViewer..."
# appletviewer index.html