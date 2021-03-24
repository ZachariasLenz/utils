# Update apt packages
sudo apt update
sudo apt upgrade
sudo apt autoremove

# Update all flatpaks
flatpak update

# Update npm
npm update

# Update snaps
sudo snap refresh

# Update nix packages
nix-env -u
nix-env -if https://github.com/srid/neuron/archive/master.tar.gz

# Update spotifyd
download-spotify
