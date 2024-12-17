autoload -U colors && colors
autoload -U vcs_info
zstyle ':vcs_info:*' enable git
export TERM=xterm-256color
precmd() {
    vcs_info
}
setopt prompt_subst
if [[ $EUID -eq 0 ]]; then
    PROMPT='%(?..%F{red}%?)%(?.%f.✘%f )%F{red}%n%f@%m %40<...<%B%~%b%<<${vcs_info_msg_0_} %# '
else
    PROMPT='%(?..%F{red}%?)%(?.%f.✘%f )%F{cyan}%n%f@%m %40<...<%B%~%b%<<${vcs_info_msg_0_} %# '
fi
