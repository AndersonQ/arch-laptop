.PHONY: install-base
install-base:
	sudo pacman -Sy --needed $$(<packages-base)

.PHONY: oh-my-zsh
oh-my-zsh:
	git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

