# Firejail profile for start-tor-browser
# This file is overwritten after every install/update
# Persistent local customizations
include /usr/local/etc/firejail/start-tor-browser.local
# Persistent global definitions
include /usr/local/etc/firejail/globals.local


include /usr/local/etc/firejail/disable-common.inc
include /usr/local/etc/firejail/disable-devel.inc
include /usr/local/etc/firejail/disable-passwdmgr.inc
include /usr/local/etc/firejail/disable-programs.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin bash,dash,sh,grep,tail,env,gpg,id,readlink,dirname,test,mkdir,ln,sed,cp,rm,getconf
private-dev
private-etc fonts
private-tmp
