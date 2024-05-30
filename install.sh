#!/bin/sh

if command -v nvim > /dev/null; then
	echo $(nvim --version | head -n 1)
else
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	sudo mv nvim-linux64/ /opt
	sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
fi

[[ -d $XDG_CONFIG_HOME ]] && pack=$XDG_CONFIG_HOME/local || pack=$HOME/.local
pack=$pack/share/nvim/site/pack
echo $pack
[[ -d $pack ]] && rm -rf $pack

[[ -d $XDG_CONFIG_HOME ]] && destination=$XDG_CONFIG_HOME || destination=$HOME/.config
destination=$destination/nvim

if [[ -d $destination ]]; then
	backup=$destination.backup
	i=1
	while [[ -d $backup ]]; do
		backup=$destination.backup-$i
		i=$((i+1))
	done
	mv $destination $backup
fi

git clone https://github.com/valentingorr/nvim-config $destination

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' && nvim
