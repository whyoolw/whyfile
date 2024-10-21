

WALLPAPERS_DIR="/home/whyoolw/Pictures/wallpaper"

# find image size to display (very slow)
#echo $(identify -format '%[fx:w]x%[fx:h]\' ~/Pictures/$A 2>/dev/null)

build_theme() {
    rows=$1
    cols=$1
    icon_size=$3

    echo "element{orientation:vertical;}element-text{horizontal-align:0.5;}element-icon{size:$icon_size.0000em;}listview{lines:$rows;columns:$cols;}"
}

theme="$HOME/.config/rofi/wallpaper/style.rasi"
#theme="/home/whyoolw/.local/share/rofi/themes/wallpapers.rasi"

ROFI_CMD="rofi -show file-browser -dmenu -i -show-icons -theme-str $(build_theme 3 5 6) -theme ${theme}"

choice=$(\
    ls --escape "$WALLPAPERS_DIR" | \
        while read A; do echo -en "$A\x00icon\x1f$WALLPAPERS_DIR/$A\n"; done | \
        $ROFI_CMD -p "󰸉  Wallpaper" \
)

wallpaper="$WALLPAPERS_DIR/$choice"

if [ "$XDG_CURRENT_DESKTOP" = "asd" ]; then
    echo "$wallpaper"
else
    swww img -t any --transition-bezier 0.0,0.0,1.0,1.0 --transition-duration 1 --transition-step 255 --transition-fps 144 "$wallpaper" && \
    ln -sf "$wallpaper" "$WALLPAPERS_DIR"/0current.png && wal -i "$wallpaper"
fi

exit 1

