##########
# Changing Directories
##########
# コマンドがディレクトリの名前である場合は、そのディレクトリに対してcdコマンドを実行
setopt AUTO_CD
# cdコマンド実行時、自動でpushdを実行
setopt AUTO_PUSHD

##########
# Completion
##########
# 補完を有効化
autoload -U compinit
compinit
# 補完リストを小さく表示
setopt LIST_PACKED

##########
# History
##########
# 履歴ファイルの場所
HISTFILE=$HOME/.zsh_history
# メモリに保存する履歴の件数
HISTSIZE=1000
# 履歴ファイルに保存する履歴の件数
SAVEHIST=2000
# 行エディタで履歴エントリを検索する場合、重複を表示しない
setopt HIST_FIND_NO_DUPS
# 履歴リストに追加された新しいコマンドが古いものと重複する場合、古いコマンドはリストから削除
setopt HIST_IGNORE_ALL_DUPS
# 履歴リストに追加されるコマンドから余分な空白を削除
setopt HIST_REDUCE_BLANKS
# 入力したコマンドを履歴ファイルに追加
setopt SHARE_HISTORY

##########
# Input/Output
##########
# コマンドのスペルを修正
setopt CORRECT
# 引数のスペルを修正
setopt CORRECT_ALL

##########
# Git
##########
source /usr/lib/git-core/git-sh-prompt
# unstaged (*), staged (+)
GIT_PS1_SHOWDIRTYSTATE=1
# stashed ($)
GIT_PS1_SHOWSTASHSTATE=1
# untracked (%)
GIT_PS1_SHOWUNTRACKEDFILES=1
# behind (<), ahead (>), diverged (<>), no difference (=)
GIT_PS1_SHOWUPSTREAM="auto"
# プロンプト文字列での変数展開を有効化
setopt PROMPT_SUBST
# プロンプトの表示内容を定義
PROMPT="%F{blue}%n@%m%f:%F{green}%d%f%F{cyan}$(__git_ps1 " (%s)")%f%# "

##########
# Alias definitions
##########
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi