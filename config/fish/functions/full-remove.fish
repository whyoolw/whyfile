function full-remove --wraps='paru -c && paru -cc && paru -Scc' --description 'alias full-remove paru -c && paru -cc && paru -Scc'
  paru -c && paru -cc && paru -Scc $argv
        
end
