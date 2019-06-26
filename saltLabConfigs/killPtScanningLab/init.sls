/var/ftp/pub:
  file.absent: []

/var/ftp/pub/shadow.bak:
  file.absent: []

vsftpd:
  pkg.removed: []

httpd:
  pkg.removed: []

httpd-tools:
  pkg.removed: []

mailcap:
  pkg.removed: []

apr:
  pkg.removed: []

apr-util:
  pkg.removed: []

/var/www/html/robots.txt:
  file.absent: []

/var/www/html/admin:
  file.absent: []

/var/www/html/backups/secrets.bak:
  file.absent: []
