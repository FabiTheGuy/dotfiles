# Dotfiles - Tower
This is the branch for my Desktop tower setup.

## Table of Contents
1. [Configuration Details](#configuration-details)
    - [Xorg](#xorg)
    - [i3](#i3)
    - [others](#others)
## Configuration Details

### Xorg
* `./src/.XResources` - Font HiDPI/Antialias.
* `./src/.xprofile` - Monitor alignment/scaling.

### i3
* `./src/.config/i3/config` - Main config sets special HiDPI-Font, includes other config files.
* `./src/.config/i3/configs/autostart.conf` - Applications which should start with i3.
* `./src/.config/i3/configs/bindings.conf` - Custom Keybindings **Note:** some bindings require [dependencies](#dependencies).

### Others

#### feh
* `./src/.config/i3/scripts/fehbg.sh` - Loads wallpapers on i3 start.
* `./src/Pictures/wallpapers/*` - Directory where feh will look for the wallpapers