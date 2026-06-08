#/bin/bash

set -euo pipefail

host_info(){
	echo "===== HOSTNAME ====="
	hostname
	uname -a
	echo " "
}

uptime_info(){
	echo "===== UPTIME ====="
	uptime
	echo " "
}

disk_info(){
	echo "Top Disk Usage Apps are :"
	df -h | sort -k5 -nr | head -5
	echo " "
}

memory_info(){
	echo "===== Memory Usage ====="
	free -h
	echo " "
}

cpu_info(){
	echo "CPU Information"
	ps aux --sort=%cpu | head -5
	echo " "
}

main() {
	host_info
	uptime_info
	disk_info
	memory_info
	cpu_info
}

main
