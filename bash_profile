# ----------------
# Whatever this is
# ----------------
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# -----------------------------
# Suppress default notification 
# -----------------------------
export BASH_SILENCE_DEPRECATION_WARNING=1

# -------
# Exports
# -------
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export BASH_SILENCE_DEPRECATION_WARNING=1

# ------------
# Bash Aliases
# ------------
alias ll="ls -A"
alias ls="ls -a"
alias c="clear"
alias rd="cd ~"
alias f="fuck"
alias ..="cd ../"
alias vim="nvim"
alias vbp="nvim ~/.bash_profile"
alias vconf="nvim ~/.config/nvim/init.vim"
alias kconf="nvim ~/.config/kitty/kitty.conf"
alias bconf="nvim ~/Developer/dotfile/bash_profile"
alias cat="bat"
alias nuans="nvm use && npm start"

# --------
# Repo Nav
# Aliases 
# --------
DEV_PATH_EXT="~/Developer/newrelic-external"
DEV_PATH_INT="~/Developer/newrelic-internal"
alias quick="cd ${DEV_PATH_EXT}/newrelic-quickstarts && echo Quickstarts Repo && gf"
alias external="cd ${DEV_PATH_EXT}"
alias internal="cd ${DEV_PATH_INT}"
alias mad="cd ${DEV_PATH_INT}/marketplace && echo marketplace && nvm use && gf"
alias sci="cd ${DEV_PATH_INT}/shared-component-installator && echo shared-component-installator && nvm use && gf"
alias fconfr="cd ${DEV_PATH_INT}/shared-component-framework-configs && echo shared-component-framework-configs && nvm use && gf"
alias cs="cd ${DEV_PATH_INT}/catalog-service-elixir/ && echo catalog-service && gf"
alias nr1-install="cd ${DEV_PATH_INT}/nr1-install-newrelic/ && echo nr1-install-newrelic && nvm use && gf"
alias tp="cd ${DEV_PATH_INT}/test-pack/ && echo test-pack && nvm use && gf"
alias scfc="cd ${DEV_PATH_INT}/shared-component-framework-configs/ && echo shared-component-framework-configs && nvm use && gf"

# -----------
# Git Aliases
# -----------
alias glg="git log --graph --decorate --oneline"
alias gs="git status"
alias gb="git branch"
alias gf="git fetch && git pull"
alias gpup="git push --set-upstream origin $1"
alias prw='gh pr list | fzf | cut -f1 | xargs gh pr view -w'
alias gp='git push'
alias gpnv='git push --no-verify'
alias gcm='git commit -m'
alias gcmnv='git commit --no-verify -m'
alias checkout='git checkout'

# -----------------
# New Relic Aliases
# -----------------
alias vault-login='newrelic-vault us login -method=ldap username=$USER method=push'


eval $(thefuck --alias)

# --------------
# Bash Functions
# --------------
gc() { git checkout -b "$1"; }
t() { tree -L "$1" --dirsfirst; }

createpr() {
	echo Title for pull request:
	read TITLE
	echo Body for pull request:
	read BODY
	echo Base to merge into:
	read BASE
	gh pr create --title "$TITLE" --body "$BODY" --base "$BASE";
}

# ---------------
# Bash Completion 
# ---------------
if [ -f /sw/etc/bash_completion ]; then
   . /sw/etc/bash_completion
fi
