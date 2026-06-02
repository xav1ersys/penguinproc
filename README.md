# 🐧 PenguinProc

**PenguinProc** is a lightweight Linux system dashboard written in Bash. It provides quick access to essential system information directly from the terminal, making it useful for Linux enthusiasts, students, system administrators, and cybersecurity learners.


![Language](https://img.shields.io/badge/language-Bash-blue)
![Platform](https://img.shields.io/badge/platform-Linux-green)
![License](https://img.shields.io/badge/license-MIT-orange)

---

<img width="1113" height="403" alt="image" src="https://github.com/user-attachments/assets/4956abb6-d948-4b85-a69c-13fb795d73ab" />

## ✨ Features

### 📋 System Information

* Hostname
* Operating System
* Kernel Version
* System Architecture
* System Uptime
* Current User

### ⚡ CPU Information

* Processor Model
* Logical CPU Core Count

### 🧠 Memory Information

* Total RAM
* Used RAM
* Available RAM

### 🎨 Terminal Interface

* ANSI Color Support
* Organized Output
* Command-Line Arguments
* Simple and Lightweight

---

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/xav1ersys/penguinproc.git
```

Navigate to the project directory:

```bash
cd penguinproc
```

Make the script executable:

```bash
chmod +x penguinproc.sh
```

Run the script:

```bash
./penguinproc.sh
```

---

## 📖 Usage

### Show Help

```bash
./penguinproc.sh -h
```

### Display System Dashboard

```bash
./penguinproc.sh -dashboard
```

### Display CPU Information

```bash
./penguinproc.sh -cpu
```

### Display Memory Information

```bash
./penguinproc.sh -mram
```

### Display All Available Information

```bash
./penguinproc.sh -all
```

---

## 📸 Example Output

```text
===========================================================
              SYSTEM DASHBOARD
===========================================================

User:      root
Hostname:  server01
System:    Ubuntu 24.04 LTS
Kernel:    6.14.0
Arch:      x86_64
Uptime:    up 3 days, 2 hours

===========================================================
                    CPU INFORMATION
===========================================================

Model:     Intel(R) Core(TM) i5-10400
Cores:     12

===========================================================
                  MEMORY INFORMATION
===========================================================

Total:     15920 MB
Used:      8421 MB
```

---

## 🛠 Requirements

* Linux
* Bash
* ProcFS (`/proc`)
* Standard GNU utilities

---

## 🎯 Purpose

This project was created as a learning exercise focused on:

* Linux Administration
* Bash Scripting
* Process Monitoring
* System Information Gathering
* Cybersecurity Fundamentals

---

## 🔮 Planned Features

* Disk Usage Monitoring
* Network Information
* Open Ports Scanner
* Running Services Information
* Process Statistics
* System Load Monitoring
* Real-Time Refresh Mode
* Temperature Monitoring

---

## 👨‍💻 Author

**xav1ersys**

GitHub: https://github.com/xav1ersys

---

⭐ If you found this project useful, consider giving it a star.

