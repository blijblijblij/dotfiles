#!/bin/bash
# echo "setting up atom"
# echo "---> addons"
# apm install linter # Base linter
# apm install linter-rubocop
# apm install rubocop-auto-correct
#
# # nicer code
# apm install atom-beautify
# apm install vim-mode-plus
#
# # language highlighting
# apm install language-docker
#
# # other
# apm install toggle-quotes
# apm install trailing-spaces
# apm install project-manager
# apm install split-diff
# apm install todo-show
# apm install highlight-selected
#
# # sql
# apm install format-sql

echo "---> projects.cson"
rm -f $HOME/git/dotfiles/atom/projects.cson
ln -s $HOME/git/dotfiles/atom/projects.cson $HOME/.atom/projects.cson
