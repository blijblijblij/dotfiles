#!/bin/bash
echo "setting up atom"
echo "---> addons"
apm install linter
apm install linter-ui-default
apm install busy-signal
apm install intentions
apm install linter-rubocop
apm install rubocop-auto-correct
apm install language-haml
apm install html2haml
apm install rspec
apm install seeing-is-believing

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

# 
apm install atom-material-ui
apm install atom-material-syntax

echo "---> projects.cson"
rm -f $HOME/.atom/projects.cson
ln -s $HOME/git/dotfiles/atom/projects.cson $HOME/.atom/projects.cson
