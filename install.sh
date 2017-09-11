MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd  )`"  # absolutized and normalized
if [ -z "$MY_PATH"  ] ; then
exit 1  # fail
fi

echo "apply dotfiles" | figlet | lolcat
echo "--->  clean " | lolcat
rm -rf ~/.vim/
mkdir ~/.vim/
mkdir ~/.vim/colors/

echo "---> re-apply the symlinks" | lolcat
ln -sf "${MY_PATH}/.gitconfig" ~/.gitconfig
ln -sf "${MY_PATH}/.gitignore_global" ~/.gitignore_global
ln -sf "${MY_PATH}/.selected_editor" ~/.selected_editor
ln -sf "${MY_PATH}/.tmux.conf" ~/.tmux.conf
ln -sf "${MY_PATH}/.vimrc" ~/.vimrc
ln -sf "${MY_PATH}/.vim" ~/.vim
ln -sf "${MY_PATH}/.zshrc" ~/.zshrc

echo "---> done"
