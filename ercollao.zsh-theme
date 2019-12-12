PROMPT='%F{magenta}%*%f %F{red}$(rbenv_prompt_info)%f %F{blue}%2~ >%f '
RPS1='$(vi_mode_prompt_info)$(git_prompt_info) %F{yellow}%n%f %F{cyan}@%m%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{red}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=" ⚡"
MODE_INDICATOR="%F{green}<< N%f "

export LSCOLORS=''

# ZLE_RPROMPT_INDENT=-1

