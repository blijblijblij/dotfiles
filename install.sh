MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd  )`"  # absolutized and normalized
if [ -z "$MY_PATH"  ] ; then
exit 1  # fail
fi

echo "apply dotfiles" | figlet | lolcat
echo "---> clean " | lolcat

if [ -d "$HOME/.vim/" ]; then
    rm -d ~/.vim/
if [ -d "$HOME/.config/tmuxinator/" ]; then
  echo "---> rm tmuxinator config folder" | lolcat
  rm -rf $HOME/.config/tmuxinator/*
fi

echo "---> re-apply the symlinks" | lolcat
ln -sf "${MY_PATH}/.gitconfig" ~/.gitconfig
ln -sf "${MY_PATH}/.gitignore_global" ~/.gitignore_global
ln -sf "${MY_PATH}/.selected_editor" ~/.selected_editor
ln -sf "${MY_PATH}/.tmux.conf" ~/.tmux.conf
ln -sf "${MY_PATH}/.vimrc" ~/.vimrc
ln -s "${MY_PATH}/.vim/" ~/.vim/
ln -sf "${MY_PATH}/.zshrc" ~/.zshrc
cp -R ${MY_PATH}/tmuxinator/* $HOME/.config/tmuxinator/

echo "---> done" | lolcat
