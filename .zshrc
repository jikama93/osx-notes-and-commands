if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/Users/jikama/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/php@7.4/bin:/usr/local/opt/php@7.4/sbin:$PATH"
export ZSH="/Users/jikama/.config/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(brew colorize iterm2 laravel node npm osx wp-cli git
 zsh-navigation-tools
 zsh-syntax-highlighting
 zsh-autosuggestions
 history-substring-search)

source $ZSH/oh-my-zsh.sh
source "/Users/jikama/.config/mysql.plugin.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
autoload -U compinit && compinit

alias ls="lsd"
alias la="lsd -l -a -h --icon=always --color=always"
alias buscar="find . -type f -print0 | xargs -0 -n10 -P4 grep -m 1 -H -l"
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias h=history
alias grep=ugrep
alias -g M='|more'
alias -g H='|head'
alias -g T='|tail'

hosts=(`hostname` server.majika.jp majika.jp)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
