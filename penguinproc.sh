#!/bin/bash

GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

function dashboard() {
	echo -e "$GREEN=========================================================== $RESET"
	echo -e "$GREEN 	          PAINEL - DASHBOARD DO SISTEMA                $RESET"
	echo -e "$GREEN=========================================================== $RESET"
	
	echo -e "User: $RED $(who) $RESET"
	echo -e "Hostname:  $RED $(hostname) $RESET"
	echo -e "System:  $RED $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"') $RESET"
	echo -e "Kernel:  $RED $(uname -r) $RESET"
	echo -e "Architecture: $RED $(uname -m) $RESET"
	echo -e "Uptime:  $RED $(uptime -p) $RESET"
}


function m_ram() {

        echo -e "$GREEN=========================================================== $RESET"
        echo -e "$GREEN	    	  M_RAM - MÉMORIA DE ACESSO ALEATÓRIO              $RESET"
        echo -e "$GREEN=========================================================== $RESET"
        
        RAM_TOTAL_KB=$(grep "MemTotal" /proc/meminfo | tr -s ' ' | cut -d' ' -f2)
        RAM_LIVRE_KB=$(grep "MemAvailable" /proc/meminfo | tr -s ' ' | cut -d' ' -f2)
        
        RAM_TOTAL=$(expr $RAM_TOTAL_KB / 1024)
        RAM_LIVRE=$(expr $RAM_LIVRE_KB / 1024)
        
        RAM_USADA=$(expr $RAM_TOTAL - $RAM_LIVRE)
        echo -e "Total: $RED ${RAM_TOTAL}MB" $RESET
        echo -e "Usada: $RED ${RAM_USADA}MB" $RESET

}


function cpu() {

        echo -e "$GREEN=========================================================== $RESET"
        echo -e "$GREEN	   	CPU - UNIDADE CENTRAL DE PROCESSAMENTO 	           $RESET"
        echo -e "$GREEN=========================================================== $RESET"
        
        CPU_MODEL=$(grep "model name" /proc/cpuinfo | head -1 | cut -d: -f2)
        
        CPU_CORES=$(grep -c ^processor /proc/cpuinfo)
        echo -e "Model:$RED $CPU_MODEL" $RESET
        echo -e "Núcleos: $RED $CPU_CORES" $RESET
}


if [ $# -eq 0 -o $# -eq 1 -a "$1" = "-h" ]
then

echo "░▒▓███████▓▒░░▒▓████████▓▒░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓███████▓▒░░▒▓███████▓▒░░▒▓███████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░  "
echo "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ "
echo "░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        "
echo "░▒▓███████▓▒░░▒▓██████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒▒▓███▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        "
echo "░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        "
echo "░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ "
echo "░▒▓█▓▒░      ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░  "
echo "                                                                                                                                          "
echo "                                                                                                                                          "
                                                                                                  
echo "[ by: xav1ersys | github.com/xav1ersys ]"
	echo
	echo "penguinproc.sh"
	echo "+===========================================================+"
	echo
	echo "-h		   Show This Help Message      "
	echo
	echo "-all		   - Show all processes"
	echo "-cpu	           - See central processing unit"
	echo "-dashboard	   - See system panel"
    echo "-mram	           - View information about total and free ram memory"
	echo
	echo "+===========================================================+"

elif [ $# -eq 1 -a "$1" = "-all" ] 
then
	cpu
	dashboard
	m_ram
elif [ $# -eq 1 -a $1 = "-cpu" ]
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
