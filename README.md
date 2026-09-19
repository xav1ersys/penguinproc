<h1 align="center">🐧 PenguinProc</h1>

<p align="center">
  A lightweight Linux system dashboard written in Bash.<br>
  Quick system info, straight from your terminal.
</p>

<p align="center">
  <img alt="Language" src="https://img.shields.io/badge/language-Bash-4EAA25?logo=gnubash&logoColor=white">
  <img alt="Platform" src="https://img.shields.io/badge/platform-Linux-FCC624?logo=linux&logoColor=black">
  <img alt="License" src="https://img.shields.io/badge/license-MIT-blue">
  <img alt="Last commit" src="https://img.shields.io/github/last-commit/xav1ersys/penguinproc">
  <img alt="Stars" src="https://img.shields.io/github/stars/xav1ersys/penguinproc?style=flat">
</p>

<p align="center">
  <img width="1089" height="398" alt="PenguinProc preview" src="https://github.com/user-attachments/assets/582849b5-7c21-4a32-9c74-d6d473681e41" />
</p>

---

## 📑 Table of Contents

- [About](#-about)
- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Example Output](#-example-output)
- [Requirements](#-requirements)
- [Roadmap](#-roadmap)
- [Author](#-author)
- [License](#-license)

---

## 📖 About

**PenguinProc** shows the essential information about your Linux machine in a clean, colored panel. No dependencies to install, no config files: just one Bash script.

It is useful for Linux enthusiasts, students, sysadmins and cybersecurity learners who want a fast look at the system.

---

## ✨ Features

| Module | What it shows |
| :-- | :-- |
| 📋 **Dashboard** | User, hostname, OS, kernel, architecture, uptime, shell, IP address, running processes, logged-in users |
| ⚡ **CPU** | Processor model, core count, current frequency |
| 🧠 **Memory** | Total and used RAM |
| 🎨 **Interface** | ANSI colors, animated loading screen, command-line arguments |

---

## 🚀 Installation

```bash
git clone https://github.com/xav1ersys/penguinproc.git
cd penguinproc
chmod +x penguinproc.sh
./penguinproc.sh
```

---

## 🕹 Usage

```bash
./penguinproc.sh [option]
```

| Option | Description |
| :-- | :-- |
| `-h` | Show the help message |
| `-dashboard` | Show the system panel |
| `-cpu` | Show CPU information |
| `-mram` | Show total and used RAM |
| `-all` | Show everything (dashboard + RAM + CPU) |

Running without arguments shows the help message.

---

## 📸 Example Output

```text
===========================================================
                PANEL - SYSTEM DASHBOARD
===========================================================
User:          root
Hostname:      server01
System:        Ubuntu 24.04 LTS
Kernel:        6.14.0
Architecture:  x86_64
Uptime:        up 3 days, 2 hours
Shell:         /bin/bash
IP Address:    192.168.0.10
Processes:     214
Users Online:  1

===========================================================
              M_RAM - RANDOM ACCESS MEMORY
===========================================================
Total:         15920MB
Used:          8421MB

===========================================================
               CPU - CENTRAL PROCESSING UNIT
===========================================================
Model:         Intel(R) Core(TM) i5-10400
Cores:         12
Frequency:     2900.000 MHz
```

---

## 🛠 Requirements

- Linux
- Bash 4+
- `/proc` filesystem
- Standard tools: `awk`, `grep`, `sed`, `ps`, `who`, `hostname`, `nproc`

---

## 🔮 Roadmap

- [x] System dashboard
- [x] CPU information
- [x] Memory information
- [ ] Disk usage
- [ ] Network information
- [ ] Open ports scanner
- [ ] Running services
- [ ] System load monitoring
- [ ] Temperature monitoring
- [ ] Real-time refresh mode

---

## 🎯 Purpose

This project started as a learning exercise in:

- Linux administration
- Bash scripting
- Process monitoring
- System information gathering
- Cybersecurity fundamentals

---

## 👨‍💻 Author

**xav1ersys** · [github.com/xav1ersys](https://github.com/xav1ersys)

---

## 📄 License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for more information.

<p align="center">⭐ If you found this project useful, consider giving it a star.</p>
