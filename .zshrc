PATH=$PATH:$HOME/bin
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/manjumotodaishi/.oh-my-zsh"

# oh-my-zsh がプロンプトを出さずに自動的にアップグレードする
DISABLE_UPDATE_PROMPT=true

# zsh-completionsの設定
autoload -U compinit && compinit -u

plugins=(git)

source $ZSH/oh-my-zsh.sh

# # 追加したソフトやパッケージ用のコマンドのパスを通す
export PATH=/usr/local/bin:$PATH

# rbenvのパスを通す
eval "$(rbenv init -)"

# Path to your oh-my-zsh installation.
export ZSH=/Users/test_user/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#PATH=$PATH:$HOME/bin oh-my-zshで利用できるテーマを指定
 ZSH_THEME="xiong-chiamiov-plus"
# ZSH_THEME="rkj-repos"
# ZSH_THEME="dallas"
# ZSH_THEME="candy"

# oh my zshで利用できるプラグインを指定
plugins=(brew brew-cask cdd gem git rbenv vagrant zsh-syntax-highlighting zsh-completions)

# zsh-completionsの設定
autoload -U compinit && compinit -u

# alias
alias be='bundle exec'
alias bedc='bundle exec docker-compose'
alias bi='bundle install'
alias ber='bundle exec rails'
alias berba='bundle exec rubocop -a'
alias berc='bundle exec rails c'
alias berg='bundle exec rails g'
alias bers='bundle exec rails s'
alias berp='bundle exec rspec'
alias berptf='bundle exec rspec --tag focus'
alias d='docker'
alias da='docker attach'
alias dc='docker-compose'
alias dcew='docker-compose exec web'
alias dcewbe='docker-compose exec web bundle exec'
alias dcewber='docker-compose exec web bundle exec rails'
alias dcewberba='docker-compose exec web bundle exec rubocop -a'
alias dcewberc='docker-compose exec web bundle exec rails c'
alias dcewberg='docker-compose exec web bundle exec rails g'
alias dcewbers='docker-compose exec web bundle exec rails s'
alias dcewberp='docker-compose exec web bundle exec rspec'
alias dcewberptf='docker-compose exec web bundle exec rspec --tag focus'
alias dcewbi='docker-compose exec web bundle install'
alias dcrwbe='docker-compose run web bundle exec'
alias dp='docker ps'
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchma='git checkout main'
alias gcmam='git commit -am'
alias gcm='git commit'
alias gcmm='git commit -m'
alias gcmv='git commit -v'
alias gd='git diff'
alias gf='git fetch'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gfy='git fetch yarukoto_list'
alias gfw='git fetch wonderful'
alias gg='git grep'
alias gl='git log'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias glga='git log --graph --all --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"--abbrev-commit --date=relative'
alias Kobito='cd ~/Library/Containers/com.qiita.Kobito/Data/Library/Kobito/'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/main'
alias gmym='git merge yarukoto_list/main'
alias gpl='git pull'
alias gplo='git pull origin'
alias gploh='git pull origin HEAD'
alias gply='git pull yarukoto_list'
alias gplw='git pull wonderful'
alias gplyh='git pull yarukoto_list HEAD'
alias gplwh='git pull wonderful HEAD'
alias gps='git push'
alias gpso='git push origin'
alias gpsy='git push yarukoto_list'
alias gpsw='git push wonderful'
alias gpsoh='git push origin HEAD'
alias gpsyh='git push yarukoto_list HEAD'
alias gpswh='git push wonderful HEAD'
alias gpsom='git push origin main'
alias gpsym='git push yarukoto_list main'
alias gpswm='git push wonderful main'
alias gs='git status'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstu='git stash -u'
alias ide='~/ide.sh'
alias lg='lazygit'
alias ll='ls -la'
alias ls='ls -G'
alias mss='mysql.server start'
alias p='php'
alias r='ruby'
alias rc='rails c'
alias rs='rails s'
alias sberc='sudo bundle exec rails c'
alias so='source'
alias sz='source ~/.zshrc'
alias t='tmux'
alias tv='tmux split-window -v -p20'
alias th='tmux split-window -h'
alias vdv='vim dotfiles/.vimrc'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias yb='yarn build'
alias yd='yarn dev'
alias yi='yarn install'
alias ys='yarn start'
alias yt='yarn test'
alias :q='exit'

# 文字コードの指定
export LANG=ja_JP.UTF-8

# 色を使用出来るようにする
autoload -Uz colors
colors

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# cdなしでディレクトリ移動
setopt auto_cd

# ビープ音の停止
setopt no_beep

# ビープ音の停止(補完時)
setopt nolistbeep

# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd

# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# キーバインディングをemacs風にする
bindkey -d
bindkey -e

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完でメニュー選択
zstyle ':completion:*:setopt:*' menu true select

# マウス使えます
set mouse=a

#色づけを on にする
# syntax on
# syntax enable

# peco settings
# 過去に実行したコマンドを選択。ctrl-rにバインド
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# 補完リストの表示間隔を狭くする
setopt list_packed

# 補完機能有効にする
autoload -U compinit
compinit -u

# 単語の入力途中でもTab補完を有効化
setopt complete_in_word

# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1

# peco の設定
function find_cd() {
    cd "$(find . -type d | peco)"
}
alias fc="find_cd"

# peco 設定
# 過去に移動したディレクトリに移動
# search a destination from cdr list
function peco-get-destination-from-cdr() {
  cdr -l | \
  sed -e 's/^[[:digit:]]*[[:blank:]]*//' | \
  peco --query "$LBUFFER"
}
# search a destination from cdr list and cd the destination
function peco-cdr() {
  local destination="$(peco-get-destination-from-cdr)"
  if [ -n "$destination" ]; then
    BUFFER="cd $destination"
    zle accept-line
  else
    zle reset-prompt
  fi
}
zle -N peco-cdr
bindkey '^x' peco-cdr

# peco 設定
# 過去に移動したことのあるディレクトリを選択。ctrl-uにバインド
function peco-cdr() {
  local destination="$(peco-get-destination-from-cdr)"
  if [ -n "$destination" ]; then
    BUFFER="cd $destination"
    zle accept-line
  else
    zle reset-prompt
  fi
}
zle -N peco-cdr
bindkey '^u' peco-cdr

# peco 設定
# cdr with peco
if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':completion:*' recent-dirs-insert both
    zstyle ':chpwd:*' recent-dirs-default true
    zstyle ':chpwd:*' recent-dirs-max 1000
    zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
fi

function peco-cdr () {
    local selected_dir="$(cdr -l | sed 's/^[0-9]\+ \+//' | peco --prompt="cdr >" --query "$LBUFFER")"
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
}
zle -N peco-cdr
bindkey '^E' peco-cdr

# peco 設定
# ghq with peco
function peco-ghq-look () {
    local ghq_roots="$(git config --path --get-all ghq.root)"
    local selected_dir=$(ghq list --full-path | \
        xargs -I{} ls -dl --time-style=+%s {}/.git | sed 's/.*\([0-9]\{10\}\)/\1/' | sort -nr | \
        sed "s,.*\(${ghq_roots/$'\n'/\|}\)/,," | \
        sed 's/\/.git//' | \
        peco --prompt="cd-ghq >" --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd $(ghq list --full-path | grep --color=never -E "/$selected_dir$")"
        zle accept-line
    fi
}

zle -N peco-ghq-look
bindkey '^G' peco-ghq-look

# peco 設定
# peco find file
function peco-find-file() {
    if git rev-parse 2> /dev/null; then
        source_files=$(git ls-files)
    else
        source_files=$(find . -type f)
    fi
    selected_files=$(echo $source_files | peco --prompt "[find file]")

    BUFFER="${BUFFER}${echo $selected_files | tr '\n' ' '}"
    CURSOR=$#BUFFER
    zle redisplay
}
zle -N peco-find-file
bindkey '^q' peco-find-file

# 叩いたコマンドに色付けしてわかりやすく表示
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
# # シェルログインとともにtmuxを起動
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
# export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
# export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"

# tmux の自動画面分割
# tmux split-window -v
# tmux split-window -h
# tmux resize-pane -D 15
# tmux select-pane -t 1
# tmux split-window -v -p 30
# tmux split-window -h -p 66
# tmux split-window -h -p 50


# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"

# luajit-openrestyをPATHの最初に置く
echo 'export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"' >> ~/.zshrc
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"

# pkg-configがluajit-openrestyを見つけるための設定
export PKG_CONFIG_PATH="/usr/local/opt/luajit-openresty/lib/pkgconfig"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"


export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
