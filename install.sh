MY_PATH="`dirname \"$0\"`"               # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd  )`"  # absolutized and normalized
if [ -z "$MY_PATH"  ] ; then
exit 1  # fail
fi

echo "apply dotfiles"
echo "---> clean "

if [ -d "$HOME/.config/tmuxinator/" ]; then
  echo "---> rm tmuxinator config folder"
  rm -rf $HOME/.config/tmuxinator
fi

echo "---> re-apply the symlinks"
ln -sf "${MY_PATH}/.aliases" ~/.aliases
ln -sf "${MY_PATH}/.gitconfig" ~/.gitconfig
ln -sf "${MY_PATH}/.gitignore_global" ~/.gitignore_global
ln -sf "${MY_PATH}/.selected_editor" ~/.selected_editor
ln -sf "${MY_PATH}/.tmux.conf" ~/.tmux.conf
ln -sf "${MY_PATH}/.zshrc" ~/.zshrc
ln -sf "${MY_PATH}/tmuxinator/" ~/.config/

echo "---> done"
