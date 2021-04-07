#SanMarE11

#!/bin/bash

host='host'
user='usuario'
pass='Password'
now="$(date +'%d-%m-%Y')"
zip -r -Z bzip2 "$now.zip" Ruta_backup
file="$now.zip"
sshpass -p $pass sftp $user@$host <<SOMEDELIMITER
	put $file
	quit
SOMEDELIMITER
exit 0
