#!/bin/bash

GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

function startup() {

    clear
    local CYAN="\e[36m"
    local BLUE="\e[34m"
    local BOLD="\e[1m"
    
    echo -e "${BOLD}${CYAN}"
    cat << 'EOF'

⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣾⣿⠿⠿⠿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣰⣾⡿⠟⠉⠁⠀⠀⣠⠶⠒⠙⠛⠿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣾⡿⠋⠀⠀⠤⣄⣀⣰⠃⠀⠀⠀⠀⠀⠈⠻⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢠⣿⡿⡡⠖⠋⠙⠲⣄⠐⢻⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣷⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣿⣿⡟⠁⠀⠀⠀⠀⠈⢳⠈⢧⠀⠀⣾⣿⡆⠀⠀⠀⠸⣿⡇⠀⠀⣠⣴⣶⣄
⠀⠀⣿⣿⠃⠀⠀⠀⢀⣀⠀⠘⣿⡿⢷⣄⠘⠛⡃⠀⠰⠀⠀⣿⣇⣴⡾⠟⠋⢹⣿
⠀⠀⢿⣿⡇⠀⠀⠀⢿⣿⡇⠀⢿⣴⣾⡿⠀⠀⠀⠀⠀⠀⢰⡿⠋⠁⠀⠀⠀⢸⣿
⠀⠀⠘⣿⣧⠀⠀⠀⠈⠩⠥⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⢠⡿⠃⠀⠀⠀⠀⠀⣿⡟
⠀⠀⠀⠘⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠽⠁⠀⠀⠀⠀⠀⣾⡿⠁
⠀⠀⠀⠀⠀⣹⣿⣶⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠤⠊⠁⠀⠘⣷⡀⠀⣠⣾⡿⠁⠀
⠀⠀⢀⣴⣾⠿⠋⠀⠉⠉⠛⠀⠐⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣶⡿⠋⠀⠀⠀
⣠⣶⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣇⠀⠀⠀⠀
⢿⣿⣄⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠀⠀⠀⠀
⠀⠙⠿⢿⣶⣶⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠉⣿⣇⢀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣾⣿⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢹⣿⡟⠛⠛⠿⣷⣄⣀⣀⣀⣀⣀⣀⣴⡾⠟⠋⢉⣿⣿⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠻⠿⣶⣶⣶⠿⠿⠿⠿⠿⠿⠻⠿⠿⠷⠶⠶⠿⠟⠁⠀⠀⠀⠀

EOF
    echo -e "${RESET}"
    
    echo -e "\t${BOLD}${CYAN}LOADING PENGUINPROC SYSTEM...${RESET}\n"
    
    for i in {1..50}; do
        local bars=$(printf "%${i}s" | tr ' ' '▓')
        local spaces=$(printf "%$((50-i))s" | tr ' ' '░')
        printf "\r\t${BLUE}%s${CYAN}%s${RESET} %d%%" "$bars" "$spaces" "$((i*2))"
        sleep 0.03
    done
    
    echo -e "\n\n\t${GREEN}ACCESS GRANTED.${RESET}\n"
    sleep 0.5
    clear

}


function dashboard() {

	echo -e "${GREEN}===========================================================${RESET}"
	echo -e "${GREEN}                PANEL - SYSTEM DASHBOARD                   ${RESET}"
	echo -e "${GREEN}===========================================================${RESET}"
	
	echo -e "User:          ${RED}$(whoami)${RESET}"
	echo -e "Hostname:      ${RED}$(hostname)${RESET}"
	echo -e "System:        ${RED}$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')${RESET}"
	echo -e "Kernel:        ${RED}$(uname -r)${RESET}"
	echo -e "Architecture:  ${RED}$(uname -m)${RESET}"
	echo -e "Uptime:        ${RED}$(uptime -p)${RESET}"
	echo -e "Shell:         ${RED}$SHELL${RESET}"	
	echo -e "IP Address:    ${RED}$(hostname -I | awk '{print $1}')${RESET}"
	echo -e "Processes:     ${RED}$(ps -e --no-headers | wc -l)${RESET}"
	echo -e "Users Online:  ${RED}$(who | wc -l)${RESET}"
}

function m_ram() {

	echo -e "${GREEN}===========================================================${RESET}"
	echo -e "${GREEN}              M_RAM - RANDOM ACCESS MEMORY                 ${RESET}"
	echo -e "${GREEN}===========================================================${RESET}"
	
	RAM_TOTAL_KB=$(grep "MemTotal" /proc/meminfo | tr -s ' ' | cut -d' ' -f2)
	RAM_LIVRE_KB=$(grep "MemAvailable" /proc/meminfo | tr -s ' ' | cut -d' ' -f2)
	
	RAM_TOTAL=$(expr $RAM_TOTAL_KB / 1024)
	RAM_LIVRE=$(expr $RAM_LIVRE_KB / 1024)
	RAM_USADA=$(expr $RAM_TOTAL - $RAM_LIVRE)
	
	echo -e "Total:         ${RED}${RAM_TOTAL}MB${RESET}"
	echo -e "Used:         ${RED}${RAM_USADA}MB${RESET}"

}

function cpu() {

	echo -e "${GREEN}===========================================================${RESET}"
	echo -e "${GREEN}               CPU - CENTRAL PROCESSING UNIT               ${RESET}"
	echo -e "${GREEN}===========================================================${RESET}"
	
	# Removendo espaços extras do modelo da CPU para não quebrar o alinhamento
	CPU_MODEL=$(grep "model name" /proc/cpuinfo | head -1 | cut -d: -f2 | sed 's/^ *//')
	CPU_FREQ=$(grep "cpu MHz" /proc/cpuinfo | head -1 | cut -d: -f2 | sed 's/^ *//')	
	CPU_CORES=$(grep -c ^processor /proc/cpuinfo)

	echo -e "Model:         ${RED}${CPU_MODEL}${RESET}"
	echo -e "Cores:       	${RED}${CPU_CORES}${RESET}"
	echo -e "Frequency:     ${RED}${CPU_FREQ} MHz${RESET}"

}

startup

if [ $# -eq 0 ] || [ $# -eq 1 -a "$1" = "-h" ]
then
	echo "░▒▓███████▓▒░░▒▓████████▓▒░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓███████▓▒░░▒▓███████▓▒░░▒▓███████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░  "
	echo "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ "
	echo "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        "
	echo "░▒▓███████▓▒░░▒▓██████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒▒▓███▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        "
	echo "░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        "
	echo "░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ "
	echo "░▒▓█▓▒░      ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░  "
	echo "                                                                                                                                          "
	echo "[ by: xav1ersys | github.com/xav1ersys ]"
	echo
	echo "penguinproc.sh"
	echo "+===========================================================+"
	echo
	echo "-h               Show This Help Message"
	echo "-all             Show all processes"
	echo "-cpu             See central processing unit"
	echo "-dashboard       See system panel"
	echo "-mram            View information about total and free ram memory"
	echo
	echo "+===========================================================+"

elif [ $# -eq 1 -a "$1" = "-all" ] 
then
	dashboard
	m_ram
	cpu
elif [ $# -eq 1 -a "$1" = "-cpu" ] 
then
	cpu
elif [ $# -eq 1 -a "$1" = "-mram" ] 
then
	m_ram
elif [ $# -eq 1 -a "$1" = "-dashboard" ] 
then
	dashboard
else 
	$0
fi
                                                                                        
