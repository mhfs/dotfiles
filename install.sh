#!/bin/bash

dir=~/Code/dotfiles         # dotfiles directory
backup_dir=$dir/backup      # backup dir for existing dotfils
files="ackrc gitconfig gitignore gemrc irbrc pryrc psqlrc" # list of files/folders to symlink in homedir

# create backup directory in dotfiles dir
echo "Creating $backup_dir for backup of any existing dotfiles in ~"
mkdir -p $backup_dir

# cd to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir

for file in $files; do
  # backup existing dotfiles
  if [ -e "$file" ]
  then
    echo "Moving existing dotfile from ~/.$file to $backup_dir"
    mv ~/.$file $backup_dir/$file
  fi

  # create new links
  echo "Creating symlink to $file in home directory."
  ln -fs $dir/$file ~/.$file
done
