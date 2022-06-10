# ----------------
# Whatever this is
# ----------------
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

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

# --------
# Repo Nav
# Aliases 
# --------
alias docs="cd ~/Documents/external/docs-website && echo Docs Repo && nvm use && gf"
alias devsite="cd ~/Documents/external/developer-website && echo Dev Repo && nvm use && gf"
alias theme="cd ~/Documents/external/gatsby-theme-newrelic && echo Theme Repo && nvm use && gf"
alias quickstarts="cd ~/Documents/external/newrelic-quickstarts && echo Quickstarts Repo && gf"
alias io="cd ~/Documents/external/instant-observability-website && echo IO && nvm use && gf"
alias snake="cd ~/Documents/personal/starter-snake-typescript && echo BattleSnakes Repo && nvm use && gf"
alias nr1_repo="cd ~/Documents/nr1/ && echo NR1 Repo"
alias internal="cd ~/Documents/internal"
alias external="cd ~/Documents/external"

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

. /usr/local/opt/asdf/libexec/asdf.sh

. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
