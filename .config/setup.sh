#!/usr/bin/env bash


# Packages
packages=(
	alacritty
	bat
	ctags
	deepin-icon-theme
	dmenu
	docker
	dusnt
	dust
	exa
	fd
	firefox-developer-edition
	fzf
	git
	go
	gopls
	grim
	neovim
	networkmanager
	noto-fonts-emoji
	obsidian
	opam
	openvpn
	ripgrep
	spotifyd
	sushi
	swaybg
	swayidle
	swaylock
	timew
	tmux
	unzip
	waybar
	waylock
	wofi
	xdg-user-dirs
	xdg-utils
	xorg-xwayland
	zoxide
	zsh
)

# Sync
pacman -Syu
# Install packages
pacman -S --noconfirm $packages

# Install aura
mkdir /tmp/setup
pushd /tmp/setup
git clone https://aur.archlinux.org/aura-bin.git
pushd aura-bin
makepkg
ls | grep "aura-bin-.*\.zst" > packagename
sudo pacman -U $(cat packagename)
popd
popd

# AUR
aur_packages=(
	aura-bin
	bluetuith-bin
	spotify-tui
	ttf-meslo-nerd-font-powerlevel10k
)

# Install aur packages
sudo aura -A --noconfirm $aur_packages



# Tmux
chmod +x ~/.config/tmux/tmux-cht.sh
ln -s ~/.config/tmux/tmux-cht.sh /bin/tmux-cht.sh

chmod +x ~/.config/tmux/tmux-sessionizer.sh
ln -s ~/.config/tmux/tmux-sessionizer.sh  /bin/tmux-sessionizer.sh

# Sway
# Screenshot utility
chmod +x ~/.config/sway/screenshot.sh
ln -s ~/.config/sway/screenshot.sh /bin/screenshot


# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env



# OCaml
opam init --auto-setup
eval $(opam env)
opam install dune merlin ocaml-lsp-server utop
