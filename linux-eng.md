##RHEL - admin/engineering
- centos stream 9 administration
- dnf, users, groups, sudo
- systemd
- networking
- DNS with BIND
- LDAP/OpenLDAP foundations
- SSSD concepts
- NFS server/client locally
- scripting
- migration simulations
- firewalld and SELinux
- performance troubleshooting
- PXE theory & lab configuration

##services on centos-stream9 vm
- linux administration
- dns server
- ldap server
- nfs server
- automation controller
- migration source/destination simulator
- troubleshooting lab


##single vm course path structure:
##phase 1: core linux administration
- users and groups
- sudo delagation
- file permissions
- systemd
- logs
- packages
- firewall
- SELinux


##phase 2: vm core infrastructure services:
- DNS with BIND
- LDAP with OpenLDAP
- local SSSD testing where possible
- NFS server and local mount

##phase 3: automation and migration
- source and destination directories
- data migration with rsync
- user export/import
- service migration
- healcth check scripts
- troubleshooting scripts

##phase 4: senior-level troubleshooting (break and fix)
- DNS
- firewall rules
- permissions
- services
- disk usage
- SELinux contexts
- systemd units

##important aarch64/arm64 considerations
- most core packages work on arm64 centos stream 9.
- some 3rd party software may not support arm.
- some proprietary eda tools
- vendor agents
- legacy rpms
- some security/monitoring tools
- some x86-only binaries

##lab 1: create enterprise-style user and group models
- goal: create admin and engineering groups similar to an R&D environment.
- created groups: linuxadmins, engineers, licensegroups, edausers
- verify created groups

