# 🐳 Java Applet Docker

> Run **legacy Java Applets** without installing legacy Java on your machine.

A small Docker environment containing **OpenJDK 8** and `appletviewer`, made for learning, experimenting, and running old Java Applet projects.

## 🚀 Quick Start

### Build

```bash
docker build -t java-applet .
```

### Run

```bash
docker run --rm -it java-applet
```

The container compiles your `.java` files and launches:

```bash
appletviewer index.html
```

## 📁 Example

```text
java-applet-docker/
├── Dockerfile
├── index.html
└── HelloApplet.java
```

## 💡 Why?

Modern JDKs no longer include `appletviewer`, and modern browsers don't support Java Applets.

Instead of installing old Java versions directly:

```text
Your Machine
     │
     ▼
  🐳 Docker
     │
     └── OpenJDK 8
           └── appletviewer
```

Your host stays clean. The legacy environment stays isolated.

## ⚠️ Note

Java Applets are **deprecated legacy technology** and should not be used for new applications.

This project is intended for **education, experimentation, and legacy compatibility**.

---

### 🕰️ Bringing the Java Applet era back — one container at a time. 🐳☕💀
