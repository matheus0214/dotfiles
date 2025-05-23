#!/usr/bin/sh

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/

rm lazygit
rm lazygit.tar.gz

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

echo '\nexport PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc

rm nvim-linux-x86_64.tar.gz

sudo apt-get install ripgrep -y
sudo apt install xclip -y
sudo apt install bear -y
sudo apt install stow -y

stow .

