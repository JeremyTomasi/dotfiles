if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vim="nvim"
    alias ls="exa --all --long --header --icons --git"

    set -x GPG_TTY $(tty)
end
