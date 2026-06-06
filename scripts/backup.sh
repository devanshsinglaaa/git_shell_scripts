#/bin/bash
source_dir=$1
backup_dir=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

zip_file="${backup_dir}/backup_${timestamp}.zip"

create_backup () {

	zip -r $zip_file "${source_dir}" > /dev/null
	
	if  [ $? -eq 0 ]; then
		echo "Backup Created Successful at $timestamp"
	fi
}
perform_rotation () {
	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))
	
	if [ "${#backups[@]}" -gt 5 ]; then

		backups_to_remove=("${backups[@]:5}")

		for backup in "${backups_to_remove[@]}"
		do
			rm -f ${backup}
		done

	fi
}
create_backup
perform_rotation
