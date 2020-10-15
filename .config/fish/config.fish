#!/usr/bin/env fish

if not functions -q fisher
    set -q XDG_CONFIG_HOME
    or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# initialize fish user paths
set -U fish_user_paths
set -U fish_user_paths ~/.local/bin $fish_user_paths
set -U fish_user_paths ~/.scripts $fish_user_paths

# add cuda path
set -U fish_user_paths ~/.local/bin $fish_user_paths
set -U fish_user_paths /usr/local/cuda-10.1/bin $fish_user_paths

# add cuda library path
set -U LD_LIBRARY_PATH /usr/local/cuda-10.1/lib64 $LD_LIBRARY_PATH

# autojump
if test -f /home/wonjun/.autojump/share/autojump/autojump.fish
    . /home/wonjun/.autojump/share/autojump/autojump.fish
end

# set miniconda path
# eval /home/wonjun/miniconda3/bin/conda "shell.fish" "hook" $argv | source

# set fd
alias fd='fdfind'

# set dotbare
set -U fish_user_paths ~/.dotbare
alias dotbare="$HOME/.dotbare/dotbare"
# set DOTBARE_DIR="$HOME/.cfg"
# set DOTBARE_TREE="$HOME"
