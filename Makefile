install:
	# install all dependencies
	sudo apt install gcc make build-essential kitty curl zsh git neovim stow tmux i3 kitty fzf feh picom aptitude npm
	# font
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/UbuntuMono.zip
	unzip UbuntuMono.zip -d UbuntuMono/
	mkdir -p ~/.fonts && mv UbuntuMono/*.ttf ~/.fonts/
	rm -r UbuntuMono*
	# tmux plugins manager
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	# oh my zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
