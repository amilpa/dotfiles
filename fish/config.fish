set fish_greeting ""


alias cdh "cd ~"
alias see 'explorer.exe'
alias vi nvim
alias fc 'cd (find Code -type d -print | fzf)'
alias fide 'tmux new-session -c (find Code -type d -print | fzf) -s MySession'
alias ide3 'source ~/ide3.zsh'
alias ide2 'source ~/ide2.zsh'
alias tkill 'tmux kill-session'
alias atach 'tmux attach -t'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# comment this out after first load
# set --universal nvm_default_version lts


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
