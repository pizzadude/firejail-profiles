# Firejail profile for firefox
# This file is overwritten after every install/update
# Persistent local customizations
# Persistent global definitions
include /etc/firejail/globals.local

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-common.inc

noblacklist /usr/games/smokinguns
noblacklist /usr/games/smokinguns/smokinguns
noblacklist /usr/games/smokinguns/baseq3
noblacklist ~/.smokinguns
whitelist ~/.smokinguns

caps.drop all
netfilter
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
#private-bin smokinguns,curl
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
nodvd

