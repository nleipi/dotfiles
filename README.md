# My humble dotfiles for vim
Just collection of plugins and configurations for vim and gvim to make my life easier

## Set up 
Clone this repository. 
- echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> .bashrc
- echo ".cfg" >> .gitignore
- git clone --bare <git-repo-url> $HOME/.cfg
- source ~/.bashrc
- config config --local status.showUntrackedFiles no
- config submodule update --init
- ~/.fzf/install
- echo "source ~/.mybashrc" >> .bashrc
