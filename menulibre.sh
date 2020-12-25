#!/bin/bash

export PATH=$PATH:/run/host/usr/bin:$HOME/.local/share/flatpak/exports/bin
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/run/host/usr/share:$HOME/.local/share/flatpak/exports/share
exec /app/bin/menulibre
