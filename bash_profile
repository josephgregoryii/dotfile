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
alias bprof="nvim ~/Developer/dotfile/bash_profile"
alias cat="bat"

# --------
# Repo Nav
# Aliases 
# --------
DEV_PATH_EXT="~/Developer/newrelic-external"
DEV_PATH_INT="~/Developer/newrelic-internal"
alias quickstarts="cd ${DEV_PATH_EXT}/newrelic-quickstarts && echo Quickstarts Repo && gf"
alias io="cd ${DEV_PATH_EXT}/instant-observability-website && echo IO && nvm use && gf"
alias theme="cd ${DEV_PATH_EXT}/gatsby-theme-newrelic && echo Theme && nvm use && gf"
alias external="cd ${DEV_PATH_EXT}"
alias internal="cd ${DEV_PATH_INT}"
alias marketplace="cd ${DEV_PATH_INT}/marketplace && echo marketplace && nvm use && gf"
alias shared-component="cd ${DEV_PATH_INT}/shared-component-installator && echo shared-component-installator && nvm use && gf"
alias cat-service="cd ${DEV_PATH_INT}/catalog-service-elixir/ && echo catalog-service"

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
alias checkout='git checkout'


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
