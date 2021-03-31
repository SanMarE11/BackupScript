#SanMarE11

#!/bin/bash

host='host'
user='usuario'
pass='Password'
remoth='/'
now="$(date +'%d-%m-%Y')"
zip -r -Z bzip2 "$now.zip" Ruta_backup
file="$now.zip"
sftp $user@$host <<SOMEDELIMITER
	quote $pass
	put $file
	quit
SOMEDELIMITER
exit 0
