# 🐧 PenguinProc

Bash script that shows system info in the terminal: user, kernel, uptime, CPU, RAM and a few other things. I made it to practice shell scripting and to get more comfortable with Linux.

![Language](https://img.shields.io/badge/language-Bash-blue)
![Platform](https://img.shields.io/badge/platform-Linux-green)
![License](https://img.shields.io/badge/license-MIT-orange)

<img width="1089" height="398" alt="image" src="https://github.com/user-attachments/assets/582849b5-7c21-4a32-9c74-d6d473681e41" />

## What it shows

- **Dashboard:** user, hostname, OS, kernel, architecture, uptime, shell, IP address, number of processes and users online
- **CPU:** model, cores and frequency
- **Memory:** RAM usage

It also has a loading screen and some ANSI colors, because why not.

## Install

```bash
git clone https://github.com/xav1ersys/penguinproc.git
cd penguinproc
chmod +x penguinproc.sh
./penguinproc.sh
```

## Usage

```bash
./penguinproc.sh -h            # help
./penguinproc.sh -dashboard    # system panel
./penguinproc.sh -cpu          # CPU info
./penguinproc.sh -mram         # RAM info
./penguinproc.sh -all          # everything
```

If you run it without arguments it just shows the help.

## Requirements

Linux, Bash and the usual tools (`awk`, `grep`, `sed`, `ps`, `who`, `hostname`, `nproc`). It reads from `/proc`, so it won't work on macOS.

## Things I want to add

- Disk usage
- Network info
- Open ports
- Running services
- System load
- Temperature
- Live refresh mode

## Author

xav1ersys - [github.com/xav1ersys](https://github.com/xav1ersys)

Licensed under MIT, see [LICENSE](LICENSE).
