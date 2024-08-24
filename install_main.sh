#getting package files
wget https://github.com/Vencord/Vesktop/releases/download/v1.5.3/vesktop_1.5.3_amd64.deb
wget https://github.com/KRTirtho/spotube/releases/download/v3.8.0/Spotube-linux-x86_64.deb
wget https://github.com/lutris/lutris/releases/download/v0.5.17/lutris_0.5.17_all.deb
wget https://github.com/Vencord/Vesktop/releases/download/v1.5.3/vesktop_1.5.3_amd64.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb

#installation of: preq.
apt install flatpak gnome-software-plugin-flatpak snapd
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#installation of: packages
snap install vlc
apt install libdvd-pkg
apt install ./*.deb
# ^ installs all debs in 1 command :D

#configs needed
dpkg-reconfigure libdvd-pkg

# \/puts tor into /opt
cd /opt
wget https://dist.torproject.org/torbrowser/13.5.2/tor-browser-linux-x86_64-13.5.2.tar.xz
tar -xf tor-browser-linux-x86_64-13.5.2.tar.xz
cd

#finishes up (removes debs)
rm *.deb
