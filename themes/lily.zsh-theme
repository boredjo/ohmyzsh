#use extended color palette if available
if [[ $terminfo[colors] -ge 256 ]]; then
    systemgray="%F{240}"
    usercolor="%F{78}"
    systemcolor="%F{33}"
    pathcolor="%F{99}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
    rootcolor="%F{196}"
else
    sytemgray="%F{gray}"
    rootcolor="%F{red}"
    usercolor="%F{green}"
    systemcolor="%F{blue}"
    pathcolor="%F{white}"
    orange="%F{yellow}"
    purple="%F{magenta}"
    hotpink="%F{red}"
    limegreen="%F{green}"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]\U2387 ($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

PS1='%{%(#~%{$rootcolor%}~%{$usercolor%})%}%n%{$systemgray%}@%{$systemcolor%}%m%{$systemgray%}:%{$pathcolor%}%~ %{$reset_color%}$(git_prompt_info)'
RPROMPT=' %{$systemgray%}[%T - %w]%{$reset_color%}'
