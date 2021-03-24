echo "Make sure you have your config file stored in $HOME/.config/spotifyd and
the systemd service file in $HOME/.config/systemd/user"

# Get Spotifyd
curl -sL https://github.com/Spotifyd/spotifyd/releases/latest | rg -o "Spotifyd/spotifyd/releases/download/.*/spotifyd-linux-full.tar.gz" | xargs -I {} curl -sLO https://github.com/{}

# Extract and move to bin
tar xfz spotifyd-linux-full.tar.gz
mv spotifyd ~/.local/bin
rm spotifyd-linux-full.tar.gz
sudo ln -sf ~/.local/bin/spotifyd /usr/bin/spotifyd

# Start the systemd service
systemctl --user start spotifyd.service
systemctl --user enable spotifyd.service
