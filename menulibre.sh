#!/bin/bash

NEWPATH="$(flatpak-spawn --host sh -c 'echo $PATH')"
NEWXDGDATA="$(flatpak-spawn --host sh -c 'echo $XDG_DATA_DIRS')"
IFS=:
for x in $NEWPATH; do
	case $x in
		/home/*) export PATH="${x}:$PATH" ;;
		*) export PATH="/run/host${x}:$PATH" ;;
	esac
done
for x in $NEWXDGDATA; do
	case $x in
		/home/*) export XDG_DATA_DIRS="$x:$XDG_DATA_DIRS" ;;
		*) export XDG_DATA_DIRS="/run/host${x}:$XDG_DATA_DIRS" ;;
	esac
done

export PATH="$PATH:$HOME/.local/share/flatpak/exports/bin"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.local/share/flatpak/exports/share"

exec /app/bin/menulibre
