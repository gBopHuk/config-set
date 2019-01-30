#!/bin/sh

TMUXCONF=${HOME}/.tmux.conf
MCCONF=${HOME}/.config/mc/ini


# configure tmux

echo "set -g mouse on" >> $TMUXCONF
echo "set-window-option -g window-status-current-bg white" >> $TMUXCONF

# configure mc

MCTHEME="darkfar"
sed -i '/\[Midnight-Commander\]/s/$/\nskin='"$MCTHEME"'/' $MCCONF

