set -Ux BROWSER /usr/bin/google-chrome-stable
set -x EDITOR 'nvim'

if test -z $DISPLAY; and test (tty) = "/dev/tty1"
    dbus-run-session niri --session

end


fish_add_path /home/whyoolw/.spicetify
