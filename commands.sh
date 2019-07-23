# /bin - contains rescue operations commands
# /usr/bin - contains information to all users, contains normal commands to all users

# commands :-
# ll - list file information
# if c- charcter stream
# d- block stream
# s- socket or network stream

# /dev contains device as files

# tty - print termainal info
# whoami -print the user name


# vi editor

# :%s/Y/y/g   - replace Y to y globally
# :%s/Y/y/gc  - replace Y to y globally and asking

# :set num - enable numbering

# below command will work in command mode
# dd - delete the line
# cc - cut the line or yank the line
# ctrl + r + " - Paste the yanked line


# standard Input - 0   <          | appending -  <<
# standard Output -1   >          | appending -  >>
# standard Error - 2   2>         | appending -  2>>

# wc - command for counting the words

# | - pipe command is used for combining two or more commands at once

# ------------------------------------------------
# systemctl list-units --type=service

# systemctl status httpd
# -------------------------------------------
# netstat -tulpn
# t - tcp
# u -udp
# l-listening
# p- port number
# n- name

# --------------------------------------------------
# netstat -p| grep 3000


# -------------------
# top
# M- sort by memory usage
# l - Display all cpu's (cores)
# A - command output in segments
# k - kill the process (PID)
# z- highlight
# s- refresh


# ------------------------------
# maximum cpu utilization

# ps -aux --sort -pcpu |less

# ----------------------------------------
# maximum memory utilization

# ps -aux  --sort  -pmem | less

# ---------------------------

# ps -aux --sort -pmem,+pcpu | head -n 10
# ps -f
# ps -e



#  watch -n 1 'ps -aux --sort -pcpu,+pmem'  - watch for every one second

#  --------------------------disk usage --------------------------------------
#  df -h
#  df -hT
#  du /home
#  du -h /home
#  du -sh /home
#  du -shc  /home/babita/snap/    c- grand total h- human readable form , s-summarize
#  du -hc  /home/babita/snap/


#  --------------------------------------Inside /proc
#  lsmod
#   cat modules | grep wmi
# lspci
# ls pci

# find /proc/ -name  pci

# sudo find /proc/ -name  pci  - find file named as pci in /proc folder


# -----------------------------vmstat iostat--------------------
# vmstat

# ------------------------------USer group in linux --------------------------
# useradd
# usermod
# userdel
# passwd
# the important user configuration are
# 1) /etc/passwd
# 2) /etc/shadow


# HOW TO ADD USer
# 1)  user joe
# 2) passwd 123
# 3) login  - login with joe credentials
# 4) whoami - check the login user
# 5)   usermod -u 1003 joe- change the userid  of joe to 1003
# 6)  usermod -g root joe -  change the groupid to that of root
# 7)  usermod -L joe - for locking the user joe
# 8) usermod -U joe - for unlocking the user joe

# Making home directory for new user
# login as root
# 1) sudo su
# 2) mkdir /home/joe
# 3) usermod -d /home/joe  joe

# deleting user
# userdel -r joe

# print the password details
# chage -l ravi


