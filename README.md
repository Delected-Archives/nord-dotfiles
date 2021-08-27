# nord dotfiles
these are some of my dotfiles and sources for my dwm, st, etc nord config. i hope you like it!

![preview](https://preview.redd.it/8pbtagx01yj71.png?width=640&crop=smart&auto=webp&s=b1dadb2af3cc2e4b32b2b4d26c1d1e435f4fba90)


# install

### Download dependencies
download the nerd-font patched JetBrains Mono font set.

[ Optional but recommended ] download the Material Design Desktop font if you want the glyphs to be a different size than the actual JetBrains Mono typeface. If you don't mind having the fonts the same size, the nerd-font patched fonts include the Material Design glyphs so you can skip this step. 

all standard x11 dependencies are required.

vim-plug if you are using my neovim/vim config. You could always use another vim package manager, but you might need to play around with the config files to make it work.

### Clone the repo
i.e. `git clone git@github.com:Delected/nord-dotfiles`
OR use https `git clone https://github.com/Delected/nord-dotfiles`

### Linking and configuration
link (soft link recommended) all the dotfiles (found in .dotfiles) to their correct places. Alternatively you could just move them. I like to keep mine organized in a folder.

**link the following files to your home dir (/home/your username)**
- `.dir_colors`
- `.xinitrc`
- `.xbindkeysrc`
- `.bashrc`

**softlink the nvim folder**
link the `.dotfiles/nvim` folder to `.config/nvim`

**picom configuration**
if you already have a build of yshui's picom then you can delete the picom folder in `.sources`. Otherwise if you like to build from source, follow the build steps in the [picom readme](https://github.com/yshui/picom/blob/next/README.md). You will also need to install these dependencies.

NOTE: picom looks for the config file at `.dotfiles/picom.conf` on startup. If you change the location of the config, edit the `.xinitrc` file accordingly.

**qutebrowser**
i would not recommend using my qutebrowser settings just because I didn't change anything useful. Preferably do the following instead:

1. Open qutebrowser and type `:config-write-py`. This will write your exisiting qutebrowser configuration to `.config/qutebrowser/config.py`. Now do `echo "config.source('nord-qutebrowser.py')" >> config.py` to add a line to the end of your config file that tells qutebrowser to source the 'nord-qutebrowser.py' file. This assumes that you have downloaded the nord-qutebrowser.py from the repository. 



# credits
@svengreb on GitHub for the beautiful lightline.vim configuration
@ryanoasis on GitHub for the stunning lightline.vim nerd-font icons
@Linuus on GitHub for the wonderful qutebrowser nord config


# side notes and todos
i might remake this with the material palenight theme. it's probably my favourite colourscheme rn, but im not sure how good it will look.

other TODOs:
- config zathura and ncmpcpp
- config some sort of terminal file manager like ranger
- maybe custom css for discord?
