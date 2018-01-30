source $HOME/.POWERLEVEL9K.conf

export PATH=":$PATH:/home/f0xxy/.config/composer/vendor/bin"
export TERM='xterm-256color'
export ZSH=$HOME/.oh-my-zsh
HIST_STAMPS="dd/mm/yyyy"
docker-ip() {
        docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}
### Segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context ssh os_icon dir_writable dir  vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time background_jobs_joined disk_usage)

### oh my zsh config
ZSH_THEME="Powerlevel9k/powerlevel9k"

### plugins
#plugins=(docker-compose git colorize history zsh-history-substring-search zsh-syntax-highlighting zsh-syntax-highlighting-filetypes compleat colored-man-pages zsh-completions  zsh-autosuggestions)
plugins=(git colorize)

source $ZSH/oh-my-zsh.sh
source /etc/profile.d/vte-2.91.sh
