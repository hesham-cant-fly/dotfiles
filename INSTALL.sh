#!/bin/bash
#
# INSTALL.sh
#

dir=~/dotfiles/
olddir=~/dotfiles_old/
files="bashrc emacs.d"
config_files="yazi sway swaync pip neofetch fuzzel fontconfig fish flameshot"

########
# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir/.config/
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# INSTALLING modules
echo "Installing git modules"
git submodule update --init --recursive

# Set up tmp (tmux plugin manager)
echo "Setup tmp"
mkdir -p ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

for file in $config_files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.config/$file ~/dotfiles_old/.config/
    echo "Creating symlink to .config/$file in ~/.config"
    ln -s ~/$dir/.config/$file ~/.config/$file
done




