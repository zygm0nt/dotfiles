#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in `ls -a1 . | grep -v .git` ; do
    if [ "$file" = "$0" ]; then
        echo "skipping $0"
    else
        if [ -e "~/$file" ]; then
            echo "Moving any existing dotfiles from ~ to $olddir"
            mv ~/$file ~/dotfiles_old/
        fi

        if [ "$file" != "README.md" ]; then
            echo "Creating symlink to $file in home directory."
            ln -s $dir/$file ~/$file
        fi
    fi
done
