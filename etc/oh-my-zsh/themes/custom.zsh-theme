local return_code="%(?..%{$fg_bold[red]%}%? <%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$fg_bold[red]%}%n@%M%{$reset_color%}'
    local user_symbol='%{$fg_bold[red]%}#%{$reset_color%}'
else
    local user_host='%{$fg_bold[green]%}%n@%M%{$reset_color%}'
    local user_symbol='%{$fg_bold[blue]%}$%{$reset_color%}'
fi

local current_dir='%{$fg_bold[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)'

PROMPT="${user_host} ${current_dir} ${git_branch}
${user_symbol} "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
