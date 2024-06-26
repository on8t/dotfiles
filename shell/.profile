#
# ~/.profile
#

if [ -n "$(command -v nvim)" ]; then
    export VISUAL="nvim --noplugin -u $HOME/.config/min-nvim/init.lua"
elif [ -n "$(command -v vim)" ]; then
    export VISUAL=vim
else
    export VISUAL=vi
fi


export BROWSER=browser

if [ -z "$XDG_RUNTIME_DIR" ]; then
    XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

    mkdir -pm 0700 "$XDG_RUNTIME_DIR"
    export XDG_RUNTIME_DIR
fi

export MOZ_ENABLE_WAYLAND=1

export EDITOR="$VISUAL"

export WINEDLLOVERRIDES=winemenubuilder.exe=d

export QT_QPA_PLATFORMTHEME=gnome

# optional custom location for npm global prefix
if [ -d "$HOME/.npm-global" ]; then
    export PATH="$HOME/.npm-global/bin:$PATH"
fi

if [ -d "$HOME/go/bin" ]; then
    export PATH="$HOME/go/bin:$PATH"
fi

export PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

if [ $TERM = linux ]; then
    if [ -n "$(command -v fzy)" ]; then
        CHOICES="$(ls /usr/bin/Hyprland /usr/bin/sway)"$'\n'"gnome"
        while echo 'run what?'; do
            PROG="$(echo $CHOICES | fzy)"
            [ -z "$PROG" ] && break
            if [ -n "$(command -v $PROG)" ]; then
                exec "$PROG"
            elif [ "$PROG" = gnome ]; then
                exec doas systemctl start gdm.service
            fi
        done
    fi
fi
