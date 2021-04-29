echo "Updating apt packages..."
sudo apt update
sudo apt upgrade
sudo apt autoremove
echo

echo "Updating flatpak packages..."
flatpak update
echo

echo "Updating npm packages..."
npm update
echo

echo "Updating snap packages..."
sudo snap refresh
echo

echo "Updating nix packages..."
nix-env -u
nix-env -if https://github.com/srid/neuron/archive/master.tar.gz
echo

echo "Updating spotifyd..."
download-spotify
echo

echo "Updating Neovim..."
_CWD=$PWD
cd ~/.local/bin/
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
cd $_CWD
echo "Done!"
