# base artix
base linux linux-firmware openrc networkmanager networkmanager-openrc vim doas

# base
base linux linux-firmware networkmanager vim opendoas efibootmgr grub tree htop

# xorg
xorg-server xorg-xinit xorg-xrandr xorg-xset xorg-xauth xorg-xprop

# audio
[xorg](#xorg)
pipewire pipewire-pulse wireplumber (pipewire-alsa)

# dwm
[xorg](#xorg)
git make gcc g++ libxinerama libxft libx11 dbus ncurses ttf-dejavu rxvt-unicode

# bspwm
[xorg](#xorg)
bspwm sxhkd polybar rxvt-unicode ttf-font-awesome-4

# plasma
[xorg](#xorg)
breeze breeze-gtk kde-cli-tools kdecoration kdeplasma-addons kmenuedit kscreen kscreenlocker kwallet-pam kwayland-integration kwayland-server kwin kwrited libkscreen milou plasma-desktop plasma-integration plasma-nm plasma-pa plasma-sdk plasma-systemmonitor plasma-vault polkit-kde-agent sddm-kcm systemsettings xdg-desktop-portal-kde plasma-wayland-session egl-wayland sddm

# kde-applications
[plasma](#plasma)
akonadi-calendar-tools akonadi-import-wizard ark dolphin dolphin-plugins ffmpegthumbs filelight kaddressbook kalarm kate kcalc kcron kcolorchooser kdeconnect kdegraphics-thumbnailers kdenetwork-filesharing kdepim-addons kdesdk-kioslaves kdesdk-thumbnailers kdf kdialog kgpg khelpcenter kio-extras kmail kmail-account-wizard kmousetool kolourpaint kompare konsole kontact korganizer krfb kwalletmanager okular partitionmanager pim-data-exporter pim-sieve-editor spectacle yakuake kalendar kcharselect ksysguard peek simplescreenrecorder

# misc (AUR needed)
[plasma](#plasma) [kde-applications](#kde-applications)
yay mpv nethogs steam vivaldi qimgv-light flatpak handbrake

# fonts
ttf-fira-code otf-ipafont

# devel
autoconf automake code fakeroot gcc git groff make patch sudo
