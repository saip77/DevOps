# 🔥 Complete Linux for DevOps: 5-Phase Mastery Plan

## 🧩 Phase 1: Linux Fundamentals + Terminal Basics
**Goal:** Build a solid foundation in Linux, understand its structure, and get comfortable using the terminal.

### ✅ Topics:
*   What is Linux? Why use Linux for DevOps?
*   Linux distributions (Ubuntu, CentOS, RHEL, etc.)
*   Linux vs Unix
*   Open-source philosophy
*   Linux architecture: Kernel, Shell, Userspace
*   Linux boot process overview
*   `init` vs `systemd`
*   Filesystem Hierarchy Standard (FHS)
    *   `/bin`, `/etc`, `/usr`, `/var`, `/home`, `/root`, `/dev`, `/proc`, `/tmp`
*   Terminal vs Shell
*   Bash and other shells (zsh, fish, etc.)
*   Command-line basics:
    *   `pwd`, `ls`, `cd`, `mkdir`, `touch`, `echo`, `clear`
*   Viewing files: `cat`, `less`, `more`, `head`, `tail`
*   Environment variables
    *   `PATH`, `HOME`, `USER`, `SHELL`
    *   `.bashrc`, `.zshrc`, `.profile`, `.bash_profile`
*   Creating and using aliases
*   Navigating efficiently with keyboard shortcuts
*   Getting help: `man`, `--help`

## 🧩 Phase 2: File Management, Permissions, Users & Search
**Goal:** Learn how Linux handles files, users, permissions, and how to find what you need.

### ✅ Topics:
*   File types: regular, directories, symlinks, sockets, devices
*   Hard links vs Soft (symbolic) links: `ln`, `ln -s`
*   File operations: `cp`, `mv`, `rm`, `cp -r`, `mv`, `rename`, `rmdir`
*   Directory management
*   Recursive listing and file search:
    *   `ls -R`, `find`, `locate`
*   Viewing and comparing file content: `diff`, `tr`, `cut`
*   User and group concepts
*   Managing users:
    *   `useradd`, `userdel`, `passwd`, `id`, `whoami`, `getent`
*   File permissions and ownership:
    *   `chmod`, `chown`, `chgrp`, `umask`
*   Running commands as root: `sudo`
*   Performing actions on multiple files (wildcards, loops)
*   Regular expressions (basic syntax)
*   `grep`, `egrep`, `sed`, `awk` basics

## 🧩 Phase 3: Processes, System Monitoring, and Networking
**Goal:** Learn how Linux manages system resources and handles network interactions.

### ✅ Topics:
*   Processes and jobs:
    *   `ps`, `top`, `htop`, `kill`, `killall`, `nice`, `renice`, `jobs`, `bg`, `fg`
*   System monitoring:
    *   `uptime`, `vmstat`, `free`, `df`, `du`, `lsof`
*   Downloading and networking tools:
    *   `wget`, `curl`, `ping`, `host`, `nslookup`, `dig`
*   Interface management:
    *   `ifconfig` / `ip`, `hostname`, `netstat`, `ss`
*   Process stats and system info:
    *   `uname`, `lscpu`, `uptime`, `dmesg`, `journalctl`
*   Archive and compression:
    *   `tar`, `gzip`, `gunzip`, `zip`, `unzip`
*   Scheduled tasks:
    *   `crontab`, `at`
*   Shell operators and scripting basics:
    *   `>`, `>>`, `|`, `&&`, `||`, `;`, `$`?

## 🧩 Phase 4: Systemd, Kernel, Filesystems, and Storage
**Goal:** Dig deeper into system management, storage, and the Linux kernel.

### ✅ Topics:
*   Systemd basics:
    *   `systemctl`, `service`, `journalctl`, `targets`
    *   Enable, disable, start, stop services
    *   Create custom systemd service files
*   Linux kernel overview
*   Kernel modules:
    *   `lsmod`, `modprobe`, `insmod`, `rmmod`
*   Linux boot process: BIOS → GRUB → `init`/`systemd`
*   File systems:
    *   `ext4`, `xfs`, `btrfs`
    *   `mount`, `umount`, `fstab`, `lsblk`, `df`
*   Partitioning:
    *   `fdisk`, `parted`, `gparted`, `blkid`
*   LVM (Logical Volume Manager):
    *   `pvcreate`, `vgcreate`, `lvcreate`, `lvextend`, `lvremove`
    *   Resizing and managing logical volumes

## 🧩 Phase 5: Package Management, Security, IPTables & Scripting
**Goal:** Master package managers, security tools, scripting, and finish with troubleshooting skills.

### ✅ Topics:
*   Package managers:
    *   RHEL/CentOS: `yum`, `dnf`, `rpm`
    *   Debian/Ubuntu: `apt`, `dpkg`
*   Bash prompt customization
*   Bash scripting (intermediate to advanced):
    *   Variables, conditionals, loops, functions, input/output
*   IPTables basics:
    *   Allow/deny ports, services, IPs
    *   `iptables-save`, `iptables-restore`
*   Firewalld overview (zones, services)
*   SSH and SCP:
    *   Secure access, key-based login, copying files securely
*   Troubleshooting scenarios:
    *   Diagnosing service failures
    *   Checking logs
    *   Analyzing boot issues
    *   Checking disk, memory, and user issues

### ✅ After Finishing All 5 Phases, You Can Confidently Complete:
*   **All 21 labs:**
    *   IPTABLES
    *   Working with Shell I & II
    *   Bash Prompt
    *   Kernel + Boot + Modules
    *   YUM/RPM and APT/DPKG
    *   VI Editor
    *   DNS & Network
    *   Permissions & Ownership
    *   SSH, SCP, Cronjob
    *   Systemd, Partitions, Filesystems, LVM
    *   Final Troubleshooting