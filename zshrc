. ~/.zsh/aliases/aliases.plugin.zsh


get_git_dirty() {
  git diff --quiet || echo '*'
}


WORKMODE="0"
WORKMODENAME=
WORKMODEPATH=
NON_WORKMODE_PS1=""

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

export PATH="$PATH:$HOME/bin:$HOME/repo/linux_setup_private/bin:$HOME/.cargo/bin:$HOME/.local/bin"

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
alias "mt_j=nvim ~/Documents/mt_journal.md"


LS_COLORS=$LS_COLORS:"di=00;35:"
export LS_COLORS

. ~/.nvm/nvm.sh
nvm use default > /dev/null


# pnpm
export PNPM_HOME="/home/leland/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


start_workmode() {
	if [[ "${WORKMODE}" = 1 ]]; then
		echo "Start a new session to start using workmode"
		return
	else
		export WORKMODE=1
		NAME=$1
		if [[ "${NAME}" = "" ]]; then
			NAME=$RANDOM
		fi
		export WORKMODENAME="$NAME"
		export WORKMODEPATH="$HOME/repo/work_${WORKMODENAME}"
		mkdir -p "${WORKMODEPATH}"
		cd "${WORKMODEPATH}"
		export NON_WORKMODE_PS1="${PS1}"
		export PS1="${PS1} %F{magenta} [work=${WORKMODENAME}] %f $ "
	fi
}

stop_workmode() {
	if [[ "${WORKMODE}" = 0 ]]; then
		echo "workmode is not active"
		return
	else
		export WORKMODE=0
		export WORKMODENAME=""
		export WORKMODEPATH=""
		export PS1="${NON_WORKMODE_PS1}"
	fi
}
preexec() {
	if [[ "${WORKMODE}" = "1" ]]; then
		echo "$1" >> "${WORKMODEPATH}/script.sh"
	fi
}


# Created by `pipx` on 2024-09-07 08:10:40
export PATH="$PATH:/home/leland/.local/bin"
bindkey -v

eval "$(zoxide init zsh)"

alias cd="z"

alias ccal="calcurse -D ~/repo/linux_setup_private/calendar"

PP="$HOME/.zsh/cli_package/zshrc"
. "${PP}"


function yx_load_cli_package() {
	PACKAGE_NAME="$1"
	CLI_PACKAGE_PATH="$2"
	if [[ -z "${CLI_PACKAGE_PATH}" ]]; then
		CLI_PACKAGE_PATH="${HOME}/.zsh/cli_package/${PACKAGE_NAME}"
	fi
	TARGET_BIN="${CLI_PACKAGE_PATH}/bin"

	TARGET_ZSHRC="${CLI_PACKAGE_PATH}/zshrc"
	# add scripts to path
	if [[ -d "${TARGET_BIN}" ]]; then 
		echo "Adding Path: ${TARGET_BIN}"
		export PATH="$PATH:${TARGET_BIN}"
	else
		echo "Bin does not exist: ${TARGET_BIN}"
	fi
	if [[ -f "${TARGET_ZSHRC}" ]]; then
		echo "Loading: ${TARGET_ZSHRC}"
		. "${TARGET_ZSHRC}"
	else
		echo "Zshrc does not exist: ${TARGET_ZSHRC}"
	fi
	
}


if [[ -f "${HOME}/.zsh/cli_package/autoload.sh" ]]; then
	. "${HOME}/.zsh/cli_package/autoload.sh"
else
	echo "Skipping autoload.sh"
fi
