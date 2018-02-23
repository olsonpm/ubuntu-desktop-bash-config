#!/usr/bin/env sh

case "${OSTYPE}" in
  darwin*) alias ls='ls -G' ;;
  linux-gnu) alias ls='ls --color' ;;
esac

export GIT_PAGER='';

setopt extendedglob

alias git-list-untracked='git ls-files --others --exclude-standard'

bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word
bindkey '^k' kill-whole-line
bindkey '^u' backward-kill-line
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
bindkey '^I' expand-or-complete
bindkey '^[[3~' delete-char

alias jqd='jq .dependencies package.json'
alias jqs='jq .scripts package.json'

# NSS related env vars
export NSS_DEFAULT_DB_TYPE='sql:'

alias un7zip='7za e'
