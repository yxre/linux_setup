. ~/.zsh/aliases/aliases.plugin.zsh


get_git_dirty() {
  git diff --quiet || echo '*'
}

autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}*'   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr '%F{yellow}+'  # display this when there are staged changes
zstyle ':vcs_info:*' actionformats \
    '%F{5}%F{5}[%F{cyan}%b%F{3}|%F{1}%a%c%u%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}%F{5}[%F{cyan}%b%c%u%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git cvs svn

theme_precmd () {
    vcs_info
}

setopt prompt_subst
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi
PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[magenta]%}%B%c/%b %{$reset_color%}${vcs_info_msg_0_}%{$reset_color%}%(!.#.$) '
RPROMPT='[%*]'

autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd

for config_file (~/.zsh/lib/*.zsh); do
  source "${config_file}"
done
unset custom_config_file

export EDITOR='vim'

export PATH="$PATH:$HOME/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DRIVE_HOME="$HOME/Documents/drive"




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="${HOME}/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias "e=nvim"
alias "ws=python -m http.server"
alias "c=xclip -selection clipboard"
alias "v=xclip -selection clipboard -o"


LS_COLORS=$LS_COLORS:"di=00;35:"
export LS_COLORS
