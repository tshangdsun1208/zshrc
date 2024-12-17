autoload -U colors && colors
autoload -U vcs_info
zstyle ':vcs_info:*' enable git
export TERM=xterm-256color
precmd() {
    vcs_info
}
setopt prompt_subst
if [[ $EUID -eq 0 ]]; then
    PROMPT='%B%F{red}%(?..%? )%f%b%B%F{red}%n%f%b@%m %B%40<..<%~%<< %b%# '
else
    PROMPT='%B%F{red}%(?..%? )%f%b%B%F{blue}%n%f%b@%m %B%40<..<%~%<< %b%# '
fi
