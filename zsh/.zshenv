alias ta="tmux a"
alias mux="tmuxp"
alias fux='tmuxp load $(tmuxp ls | fzf --layout=reverse --info=inline --height=40%)'
alias kmux='kill -9 $(ps aux | ag tmux | ag -v ag | awk "{print \$2}")'
alias vim=nvim
bindkey -s ^f "tmux-sessionizer\n"

export DOTFILES=$HOME/.dotfiles
