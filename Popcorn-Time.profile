# Firejail profile for Popcorn-Time
# This file is overwritten after every install/update
# Persistent local customizations
#include /etc/firejail/franz.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.cache/Popcorn-Time
noblacklist ~/.config/Popcorn-Time
#noblacklist ~/.pki
noblacklist ~/Programs/Popcorn-Time/
noblacklist /media/pizzadude/ruri/storage/stuff/Programs/Popcorn-Time/
noblacklist /media/pizzadude/mikuru/storage/.config/Popcorn-Time/
noblacklist /media/pizzadude/mikuru/storage/popcorncache/

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-programs.inc

#mkdir ~/.cache/Popcorn-Time
#mkdir ~/.config/Popcorn-Time
#mkdir ~/.pki
#whitelist ${DOWNLOADS}
whitelist ~/.cache/Popcorn-Time
whitelist ~/.config/Popcorn-Time
#whitelist ~/.pki
whitelist ~/Programs/Popcorn-Time/
whitelist /media/pizzadude/ruri/storage/stuff/Programs/Popcorn-Time/
whitelist /media/pizzadude/mikuru/storage/.config/Popcorn-Time/
whitelist /media/pizzadude/mikuru/storage/popcorncache/

include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
shell none

#disable-mnt
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
