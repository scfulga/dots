[[ $- != *i* ]] && return
# bash prompt
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
# spell check
shopt -s cdspell
# scroll through past commands
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# case unsensitive
bind 'set completion-ignore-case on'
# autocomplete more like zsh
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind 'set show-all-if-ambiguous on'
# Rebind Ctrl + W to delete only last word
stty werase undef
bind '\C-w:unix-filename-rubout'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias music="ncmpcpp"
alias da="yt-dlp --extract-audio --audio-format flac --add-metadata --no-playlist"
alias dv="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export EDITOR=nvim
