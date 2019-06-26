localadmin:
  user.absent: []
  group.absent: []


tomcatadmins:
  group.absent: []

/etc/ssh/sshd_config:
  file.uncomment:
    - regex: PasswordAuthentication no
    
sshd:
  service.running:
    - restart: True
    - watch:
      - file: /etc/ssh/sshd_config
