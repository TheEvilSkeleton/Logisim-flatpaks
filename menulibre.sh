#!/bin/bash

export PATH=$PATH:/run/host/usr/bin
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/run/host/usr/share
exec /app/bin/menulibre
