function update --description 'alias update sudo pacman -Syyuu && paru -Syua && paru -c && flatpak update'
  sudo pacman -Syyuu && paru -Syua && paru -c $argv; 
end
