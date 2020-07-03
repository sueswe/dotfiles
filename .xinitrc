if test -f "$HOME/.Xresources"; then
    echo "merging ..."
    xrdb -merge "$HOME/.Xresources"
fi
