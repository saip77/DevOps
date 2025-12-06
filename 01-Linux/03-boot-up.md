# Linux Boot Process Notes

---

## **Phase 1: The Hardware Handshake (BIOS/UEFI)**

Before Linux even exists, the hardware must check itself.

- **Power On:** You press the power button. Electricity flows to the motherboard.  
- **POST (Power-On Self-Test):** The firmware (BIOS or modern UEFI) runs diagnostics:
  - Checks if RAM is working
  - Detects CPU
  - Detects keyboard and other essential hardware
- **Boot Order:** BIOS checks its settings to determine where to look for an OS:
  - Hard Drive, USB, CD-ROM, etc., in the order set
- **The Handover:** BIOS reads the first sector of the boot drive (Master Boot Record, MBR – 512 bytes) to start the bootloader.

---

## **Phase 2: The Bootloader (GRUB Stage 1 & 2)**

The MBR is too small to hold the OS; it only points to the bootloader.

- **Stage 1 (MBR):** Loads a small program called the Bootloader (usually GRUB).  
- **Stage 1.5:** Loads filesystem drivers so the bootloader can read the hard drive.  
- **Stage 2 (GRUB Menu):** Displays a menu to select:
  - Normal Linux
  - Recovery mode
  - Older kernel versions
- **Action:** GRUB locates the kernel image (usually `/boot/vmlinuz`) and loads it into RAM.

---

## **Phase 3: The Kernel & the "Chicken-Egg" Problem**

The kernel needs drivers to read the hard drive, but the drivers are on the hard drive.

- **Decompression:** The compressed kernel unzips itself in RAM.  
- **Initramfs (Initial RAM Filesystem):** Bootloader loads a small temporary filesystem in RAM with essential drivers.  
- **Mounting Root:** Once drivers are loaded, the kernel discards initramfs and mounts the real root filesystem (`/`) as read-only initially.

---

## **Phase 4: The First Process (PID 1)**

Once the kernel can see the hard drive, it starts the first real program.

- **Init System:** Kernel executes `/sbin/init` (modern systems use **Systemd**).  
- **PID 1:** Assigned to the first process. If it dies → Kernel Panic.  
- **Target Selection:** Systemd checks default target:
  - `multi-user.target` → command-line interface only (servers)  
  - `graphical.target` → full desktop interface (PCs/laptops)

---

## **Phase 5: User Space (Services & Login)**

Systemd orchestrates the startup of services to prepare the system for the user.

- **Mounting Filesystems:** Root is remounted as read/write; other partitions (e.g., `/home`) are mounted.  
- **Starting Services (Daemons):**
  - **Network Manager:** Connects to WiFi/Ethernet
  - **Syslog:** Starts system logging
  - **Display Manager:** Starts graphical login interface (GDM, LightDM)
  - **Getty:** Manages command-line login prompts

---

## **Phase 6: User Login**

- **Authentication:** Username and password checked against `/etc/shadow`.  
- **Shell/GUI Launch:**
  - If correct, launches default shell (Bash/Zsh)  
  - In graphical mode, launches Desktop Environment (GNOME, KDE, etc.)

---

## **Summary of Key Files**

| Phase       | Key File/Location                | Purpose |
|------------|---------------------------------|---------|
| BIOS       | Motherboard Chip                 | Firmware that checks hardware |
| Bootloader | `/boot/grub/grub.cfg`           | GRUB menu configuration |
| Kernel     | `/boot/vmlinuz`                 | Compressed Linux kernel |
| Temp Drive | `/boot/initrd.img`              | Temporary filesystem with drivers (initramfs) |
| Init       | `/lib/systemd/systemd`          | First process (PID 1) |
| Config     | `/etc/fstab`                     | Specifies which drives to mount |
