# pacstrap /mnt base linux linux-firmware networkmanager vim opendoas efibootmgr grub tree htop

pacman -S --needed xorg-server xorg-xinit xorg-xrandr xorg-xset xorg-xauth xorg-xprop \
&& \
pacman -S --needed autoconf automake code fakeroot gcc git groff make patch sudo \
&& \
pacman -S --needed pipewire pipewire-pulse wireplumber \
&& \
# plasma
pacman -S --needed breeze breeze-gtk kde-cli-tools kdecoration kdeplasma-addons kmenuedit kscreen kscreenlocker kwallet-pam kwayland-integration kwayland-server kwin kwrited libkscreen milou plasma-desktop plasma-integration plasma-nm plasma-pa plasma-sdk plasma-systemmonitor plasma-vault polkit-kde-agent sddm-kcm systemsettings xdg-desktop-portal-kde plasma-wayland-session egl-wayland sddm \
&& \
systemctl enable sddm \
&& \
# kde-applications
pacman -S --needed akonadi-calendar-tools akonadi-import-wizard ark dolphin dolphin-plugins ffmpegthumbs filelight kaddressbook kalarm kate kcalc kcron kcolorchooser kdeconnect kdegraphics-thumbnailers kdenetwork-filesharing kdepim-addons kdesdk-kioslaves kdesdk-thumbnailers kdf kdialog kgpg khelpcenter kio-extras kmail kmail-account-wizard kmousetool kolourpaint kompare konsole kontact korganizer krfb kwalletmanager okular partitionmanager pim-data-exporter pim-sieve-editor spectacle yakuake kalendar kcharselect ksysguard peek simplescreenrecorder cronie \
doas vim /etc/sudoers \
git clone https://aur.archlinux.org/yay && cd yay && makepkg -si && cd .. \
&& \
# misc (AUR needed)
yay -S --needed yay mpv nethogs steam vivaldi qimgv-light flatpak handbrake \
&& \
# fonts
pacman -S --needed ttf-fira-code otf-ipafont
