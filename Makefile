.PHONY: install-base
install-base:
	sudo pacman -Sy --needed $$(<packages-base)
