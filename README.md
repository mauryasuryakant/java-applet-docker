# 🐳 Java Applet Docker

> Run **legacy Java Applets** without installing legacy Java on your machine.

A small, self-contained Docker environment with **OpenJDK 8**, `appletviewer`, **Xvfb**, **VNC**, and **noVNC**.

Run your Applet in a virtual display and access it directly from your browser.

## 🚀 Quick Start

### Build

```bash
docker build -t java-applet .
```

### Run

```bash
docker run --rm -it -p 6080:6080 java-applet
```

Then open:

```text
http://localhost:6080/vnc_auto.html
```

Your AppletViewer will appear in the browser. 🎉

## 📁 Example

```text
java-applet-docker/
├── Dockerfile
├── start.sh
├── index.html
└── HelloApplet.java
```

The container automatically:

```text
.java files
    ↓
  javac
    ↓
.class files
    ↓
appletviewer
    ↓
Xvfb → VNC → noVNC
    ↓
Browser 🖥️
```

## 💡 Why?

Modern JDKs no longer include `appletviewer`, and modern browsers don't support Java Applets.

Instead of installing an old Java environment directly:

```text
Your Machine
     │
     ▼
  🐳 Docker
     │
     ├── OpenJDK 8
     ├── appletviewer
     ├── Xvfb
     ├── VNC
     └── noVNC
             │
             ▼
          Browser
```

Your host stays clean. The entire legacy environment stays inside the container.

## ⚠️ Note

Java Applets are **deprecated legacy technology** and should not be used for new applications.

This project is intended for **education, experimentation, and legacy compatibility**.

---

### 🕰️ Bringing the Java Applet era back — one container at a time. 🐳☕💀
