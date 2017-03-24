#!/bin/bash
echo "setting up atom"
echo "---> addons"
# Base linter
apm install linter
apm install linter-ui-default
apm install busy-signal
apm install intentions
apm install linter-rubocop
apm install rubocop-auto-correct

# nicer code
apm install atom-beautify
apm install vim-mode-plus

# language highlighting
apm install language-docker

# other
apm install toggle-quotes
apm install trailing-spaces
apm install project-manager
apm install split-diff
apm install highlight-selected

# sql
apm install format-sql

echo "---> projects.cson"
rm -f $HOME/.atom/projects.cson
ln -s $HOME/git/dotfiles/atom/projects.cson $HOME/.atom/projects.cson
