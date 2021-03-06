# Firejail profile for nemo
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/nemo.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/nemo
noblacklist ${HOME}/.local/share/Trash
noblacklist ${HOME}/.local/share/nemo
noblacklist ${HOME}/.local/share/nemo-python

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix,inet,inet6
seccomp
shell none

noexec ${HOME}
noexec /tmp
