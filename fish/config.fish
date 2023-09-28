if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
# set --universal nvm_default_version lts
alias tmux "tmux -u"
alias vi "~/nvim/nvim.appimage"
alias tkill "tmux kill-session"
alias btop "btop --utf-force"

set -gx TERM screen-256color
fish_vi_key_bindings
tmux -u

function forward-char-and-accept-autosuggestion-if-at-end
    set -l right_of_cursor "$(string sub "$(commandline)" --start (math (commandline --cursor) + 2))"
    commandline -f forward-char
    if test -z $right_of_cursor
        commandline -f accept-autosuggestion
    end
end
bind l forward-char-and-accept-autosuggestion-if-at-end
