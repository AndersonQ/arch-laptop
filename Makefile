.PHONY: install-base
install-base:
	sudo pacman -Sy --needed $$(<packages-base)
	./script-install-yay.sh
	yay -a -S adwaita-qt

.PHONY: oh-my-zsh
oh-my-zsh:
	git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom}/themes/powerlevel10k

.PHONY: configure-user
configure-user:
	cp -av dotfiles/. ~/

# yay adwaita-qt
