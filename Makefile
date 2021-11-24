.PHONY: install-base
install-base:
	sudo pacman -Sy --needed $$(<packages-base)
	scripti-install-yay.sh

.PHONY: oh-my-zsh
oh-my-zsh:
	git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

.PHONY: configure-user
configure-user: oh-my-zsh
	cp -av dotfiles/. ~/

# yay adwaita-qt
