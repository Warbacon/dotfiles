function ls --wraps=lsd --description 'alias ls=lsd'
  echo ""
  exa --icons $argv; 
end
