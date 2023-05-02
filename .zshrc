# 壊れたらこいつを入れれはzshはなおる。
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
export PATH=/opt/homebrew/bin:$PATH
export PATH=/Users/kento-takahashi/.rd/bin:$PATH
autoload -U compinit
compinit
#git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() {vcs_info}
#プロンプトカスタマイズ
PROMPT='[%B%F{red}%n@%m%f%b:%F{green}%~%f]
%F{cyan}$vcs_info_msg_0_
%f%F{yellow}$%f'

export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# nodeパッケージ管理（asdf）のパス
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
. /opt/homebrew/opt/asdf/libexec/asdf.sh
