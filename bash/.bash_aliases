# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#使用man查看英文man手册
alias man='man -M /usr/share/man'
# 设置中文man别名
alias cman='man -M /usr/share/man/zh_CN'

# valgrind内存泄漏检测
alias vgr='valgrind \
    --tool=memcheck \
    --leak-check=full \
    --show-leak-kinds=all \
    --track-origins=yes'

# 输出到文件
alias vgrl='valgrind \
    --tool=memcheck \
    --leak-check=full \
    --show-leak-kinds=all \
    --track-origins=yes \
    --log-file=valgrind.log'

# fzf + fd: fuzzy cd into a directory
cdf() {
  local fd_cmd dir
  fd_cmd=$(command -v fd || command -v fdfind) || return 1
  dir=$("$fd_cmd" --type d --hidden --exclude .git . "${1:-.}" | fzf) && cd "$dir"
}
# Optional: bind Ctrl-g to cdf
bind -x '"\C-g": cdf'

# yazi: quit and cd into the last yazi directory
yy() {
  local tmp
  tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  local cwd
  cwd="$(<"$tmp")"
  if [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# Usage:
# cdf       # 在当前目录下 fuzzy 选择子目录并进入
# cdf ~     # 从家目录开始找
# yy        # 打开 yazi，退出后自动 cd 到 yazi 当前目录

alias oc='opencode'

# fzf file and nvim it
alias vf='nvim "$(fd --type f --hidden --exclude .git | fzf)"'
