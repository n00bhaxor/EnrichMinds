nmap-ncat:
  pkg.installed: []

tomcat:
  pkg.installed: []
  service.running:
    - enable: True
    - watch:
      - file: /usr/share/tomcat/conf/tomcat-users.xml

tomcat-admin-webapps:
  pkg.installed:
    - order: 1


/etc/cron.d/tomcatCheck:
  file.managed:
    - source: salt://privescLab/tomcatCheck
    - mode: 644
    - user: root
    - group: root

#/usr/share/tomcat/admin:
#  file.directory:
#    - user: root
#    - group: tomcatadmins
#    - mode: 750
#    - makedirs: True

/usr/share/tomcat/admin/tcadminCheckTomcat.sh:
  file.managed:
    - source: salt://privescLab/tcadminCheckTomcat.sh
    - user: root
    - group: tomcatadmins
    - mode: 770
    - makedirs: True
    - dir_mode: 750

/usr/share/tomcat/conf/tomcat-users.xml:
  file.managed:
    - source: salt://privescLab/tomcat-users.xml
    - mode: 640
    - user: root
    - group: tomcat

permissive:
  selinux.mode

