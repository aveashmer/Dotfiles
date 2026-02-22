export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

. "$HOME/.local/bin/env"
alias note='nvim ~/Notes/$(date +%Y-%m-%d).md'
alias yn='yazi ~/Notes'
alias ym="mpv --no-video --ytdl-raw-options=cookies-from-browser=firefox"

export EDITOR="nvim"
export VISUAL="nvim"
export EDITOR="nvim"
export VISUAL="nvim"


# 1. Активация Starship (красивая строка)
eval "$(starship init zsh)"

# 2. Подсветка синтаксиса
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Отключение подчеркивания путей
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# 3. Автоподсказки (серый текст)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# 4. Активация fzf
source <(fzf --zsh)


# Удаление через Option + Backspace для Mac (Zsh format)
export FZF_CTRL_R_OPTS="
  --bind 'alt-backspace:execute(sed -i \"\" \"/{}/d\" \$HISTFILE)+reload(strings \$HISTFILE | sed \"s/^[[:space:]]*//\")'
  --header 'Option + Backspace — удалить команду из истории'
"
