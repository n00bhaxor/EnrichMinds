nmap-ncat:
  pkg.removed: []

tomcat:
  pkg.purged: []

tomcat-admin-webapps:
  pkg.purged: []


/etc/cron.d/tomcatCheck:
  file.absent: []

#/usr/share/tomcat/admin:
#  file.directory:
#    - user: root
#    - group: tomcatadmins
#    - mode: 750
#    - makedirs: True

/usr/share/tomcat/admin/tcadminCheckTomcat.sh:
  file.absent: []

enforcing:
  selinux.mode

