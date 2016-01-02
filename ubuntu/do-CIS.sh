#!/bin/bash

do-backup() {
    files=("/etc/ssh/sshd_config" "/etc/audit/audit.rules" "/etc/fstab" "/etc/login.defs" "/etc/sysctl.conf" "/etc/hosts.deny" "/etc/hosts.allow")
    backup_dir="/opt/CIS"
    if [ ! -d "$backup_dir" ]; then
	sudo mkdir $backup_dir
	for i in "${files[@]}"
	do
		 sudo cp $i $backup_dir
	done
    else
	for i in "${files[@]}"
	do
		 sudo cp $i $backup_dir
	done
    fi
}

do-backup

