if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set --universal nvm_default_version lts
alias tmux "tmux -u"
alias vi "~/nvim/nvim.appimage"
alias tkill "tmux kill-session"
alias btop "btop --utf-force"
alias docker "sudo docker"
alias cpytm "tmux save-buffer - | xclip -selection clipboard"
abbr -a -g c clear

function open
    vi (find . -type d -print | fzf)
end

function dir
    cd (find . -type d -print | fzf)
end

set -gx TERM screen-256color
fish_vi_key_bindings
if not set -q TMUX
    tmux -u
end


function forward-char-and-accept-autosuggestion-if-at-end
    set -l right_of_cursor "$(string sub "$(commandline)" --start (math (commandline --cursor) + 2))"
    commandline -f forward-char
    if test -z $right_of_cursor
        commandline -f accept-autosuggestion
    end
end
bind l forward-char-and-accept-autosuggestion-if-at-end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
