alias server='python -m SimpleHTTPServer'
#unalias vim
unalias grc
unalias gls
alias history='history 1'
alias h='history 100000'

alias locked="lsof +L1"

# Overriding gp to be git pull origin instead of git push
alias gp="git pull origin"

alias tmux="TERM=screen-256color-bce tmux"

alias v='f -e vim' # quick opening files with vim

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Color listing
eval $(gdircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias d_rm_exit="docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm"
alias d_rm_all='docker rm $(docker ps -a -q)'
alias d_kill_and_rm="d_kill && d_rm_all"
alias d_kill='docker kill $(docker ps -a -q)'
alias d_stop='docker stop $(docker ps -a -q)'
alias d_rm_dangling='docker rmi $(docker images -q -f dangling=true)'

alias release='/Users/jcugno/Development/bridg-config/deploy/bin/release'
