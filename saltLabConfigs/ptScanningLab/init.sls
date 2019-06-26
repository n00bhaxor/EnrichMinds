/var/ftp/pub:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/var/ftp/pub/shadow.bak:
  file.managed:
    - source: salt://ptScanningLab/shadow.bak
    - mode: 644
    - user: root
    - group: root
    - require:
      - file: /var/ftp/pub

vsftpd:
  pkg.installed:
    - enable: True
  service.running:
    - enable: True
    - require:
      - file: /var/ftp/pub/shadow.bak

httpd:
  pkg.installed:
    - enable: True
  service.running:
    - enable: True

/var/www/html/robots.txt:
  file.managed:
    - source: salt://ptScanningLab/robots.txt
    - mode: 644
    - user: apache
    - group: apache
    - require:
      - pkg: httpd

/var/www/html/admin:
  file.directory:
    - user: apache
    - group: apache
    - mode: 755
    - require:
      - pkg: httpd

/var/www/html/backups/secrets.bak:
  file.managed:
    - source: salt://ptScanningLab/secrets.bak
    - user: apache
    - group: apache
    - mode: 644
    - makedirs: True
    - require:
      - pkg: httpd
