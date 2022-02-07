if status is-interactive
    set fish_greeting

    # export MANPAGER="nvim  +Man!"

    abbr --add --global q exit
    abbr --add --global clr clear
    alias ls=lsd

    starship init fish | source
end
