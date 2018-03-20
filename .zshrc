alias art='php artisan'
source $HOME/.POWERLEVEL9K.conf
ayax=$HOME/Documentos/estudio/Ayax

export PATH=":$PATH:$HOME/.config/composer/vendor/bin"
export TERM='xterm-256color'
export ZSH=$HOME/.oh-my-zsh
HIST_STAMPS="dd/mm/yyyy"

### oh my zsh config
ZSH_THEME="powerlevel9k/powerlevel9k"

### plugins
plugins=(docker-compose docker laravel5 git colorize history history-substring-search zcompletions compleat syntax-highlighting syntax-highlighting-filetypes autosuggestions colored-man-pages)

docker-ip() {
        docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}
source $ZSH/oh-my-zsh.sh
source /etc/profile.d/vte-2.91.sh
