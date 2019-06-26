localadmin:
  user.present:
    - fullname: Local Administrator
    - shell: /bin/bash
    - home: /home/localadmin
    - uid: 5000
    - gid: 5000
    - password: $6$rounds=10000$Qb9SEPqUrw4d$8LuBE/Arem2o576Qf.25cX9rfWoE/wIgQMPK9xDy0.FNHotu4mS5L.KWyDDqKmwXenJrlgNZHODTHD56l2tmK1
    - require:
      - group: localadmin
  group.present:
    - gid: 5000


tomcatadmins:
  group.present:
    - gid: 5001
    - members:
      - localadmin
    - require:
      - user: localadmin

/etc/ssh/sshd_config:
  file.comment:
    - regex: PasswordAuthentication no
    
sshd:
  service.running:
    - restart: True
    - watch:
      - file: /etc/ssh/sshd_config
