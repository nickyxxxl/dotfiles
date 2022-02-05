### pre install
switch to root (optional)

### partitioning
`fdisk /dev/sda`

`g` - new GPT patition table
`n` - new partition
`t` - change partition type
`w` - write changes to disk

resulting partitions:
EFI partition - 200Mb - sda1
Linux filesystem - rest - sda2

### filesystems
`mkfs.fat -F32 /dev/sda1`
`mkfs.ext4 /dev/sda2`
`mount /dev/sda2 /mnt`
`mkdir -p /mnt/boot/efi`
`mount /dev/sda1 /mnt/boot/efi`

### install
`basestrap /mnt base linux linux-firmware openrc vim networkmanager networkmanager-openrc doas`
`fstabgen -U /mnt >> /mnt/etc/fstab`

### locale
`artix-chroot /mnt`
`ln -sf /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime`
`hwclock --systohc`

`vim /etc/locale.gen`
/en_US
uncomment en_US.UTF-8

`vim /etc/locale.conf`
 >  LANG="en_US.UTF-8"
 
`locale-gen`
 
### hosts
`vim /etc/hostname`
 >   myPc
 
`vim /etc/hosts`
 >   127.0.0.1   localhost
 >   ::1         localhost
 
`rc-update add NetworkManager default`

### etc
`passwd` - root password
`useradd -mG wheel nicky`
`passwd nicky` - user password
`vim /etc/doas.conf`
 >  permit persist :wheel

### bootloader
`pacman -S grub efibootmgr`
`grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB`
`vim /etc/default/grub` (optional)
edit the timeout
`grub-mkconfig -o /boot/grub/grub.cfg`
`exit`

### reboot
`umount -R /mnt`
`reboot`
