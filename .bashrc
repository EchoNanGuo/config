# 仅在交互式会话中启用以下设置
case $- in
  *i*) ;; # 如果当前是交互式会话，继续执行
    *) return;; # 如果不是交互式会话，退出
esac

# 指定 oh-my-bash 的安装路径。
export OSH=~/.oh-my-bash

# 设置要加载的主题名称。如果将其设置为“random”，每次加载 oh-my-bash 时会随机加载一个主题。
OSH_THEME="powerline-multiline"

# 如果将 OSH_THEME 设置为“random”，可以忽略不喜欢的主题。
# OMB_THEME_RANDOM_IGNORED=("powerbash10k" "wanelo")

# 取消注释以下行以使用大小写敏感的补全。
# OMB_CASE_SENSITIVE="true"

# 取消注释以下行以使用连字符不敏感的补全。需要关闭大小写敏感补全功能。
# OMB_HYPHEN_SENSITIVE="false"

# 取消注释以下行以禁用每两周一次的自动更新检查。
# DISABLE_AUTO_UPDATE="true"

# 取消注释以下行以更改自动更新的频率（以天为单位）。
# export UPDATE_OSH_DAYS=13

# 取消注释以下行以禁用 ls 命令的颜色显示。
# DISABLE_LS_COLORS="true"

# 取消注释以下行以禁用自动设置终端标题。
# DISABLE_AUTO_TITLE="true"

# 取消注释以下行以启用命令自动更正功能。
# ENABLE_CORRECTION="true"

# 取消注释以下行以在等待补全时显示红点。
# COMPLETION_WAITING_DOTS="true"

# 取消注释以下行以禁用在版本控制系统中将未跟踪的文件标记为脏文件。
# 这使得在大仓库中检查状态变得更快。
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# 取消注释以下行以使未跟踪的文件不影响仓库的脏状态。
# SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

# 取消注释以下行以完全忽略仓库中未跟踪的文件。
# SCM_GIT_IGNORE_UNTRACKED="true"

# 取消注释以下行以更改历史记录命令输出中显示的命令执行时间戳格式。
# 可使用以下格式：
# * 'mm/dd/yyyy'     # 月/日/年 + 时间
# * 'dd.mm.yyyy'     # 日.月.年 + 时间
# * 'yyyy-mm-dd'     # 年-月-日 + 时间
# * '[mm/dd/yyyy]'   # 带颜色的 [月/日/年] + [时间]
# * '[dd.mm.yyyy]'   # 带颜色的 [日.月.年] + [时间]
# * '[yyyy-mm-dd]'   # 带颜色的 [年-月-日] + [时间]
# 如果未设置，则默认值为 'yyyy-mm-dd'。
# HIST_STAMPS='yyyy-mm-dd'

# 取消注释以下行以不让 OMB 覆盖现有的别名，使用 lib/*.sh 中定义的默认别名。
# OMB_DEFAULT_ALIASES="check"

# 如果希望使用不同于 $OSH/custom 的自定义目录，请设置以下变量。
# OSH_CUSTOM=/path/to/new-custom-folder

# 若要禁用 oh-my-bash 使用 "sudo" 的功能，请将此变量设置为 "false"。
# 默认为空时的行为是 "true"。
OMB_USE_SUDO=true

# 启用/禁用显示 Python 的虚拟环境和 conda 环境。
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # 启用
# OMB_PROMPT_SHOW_PYTHON_VENV=false # 禁用

# 指定要加载的补全功能。（补全文件位于 ~/.oh-my-bash/completions/*）
# 自定义补全功能可以添加到 ~/.oh-my-bash/custom/completions/。
# 示例格式：completions=(ssh git bundler gem pip pip3)
# 请谨慎添加过多的补全功能，否则会减慢 shell 启动速度。
completions=(
  git
  composer
  ssh
)

# 指定要加载的别名。（别名文件位于 ~/.oh-my-bash/aliases/*）
# 自定义别名可以添加到 ~/.oh-my-bash/custom/aliases/。
# 示例格式：aliases=(vagrant composer git-avh)
# 请谨慎添加过多的别名，否则会减慢 shell 启动速度。
aliases=(
  general
)

# 指定要加载的插件。（插件位于 ~/.oh-my-bash/plugins/*）
# 自定义插件可以添加到 ~/.oh-my-bash/custom/plugins/。
# 示例格式：plugins=(rails git textmate ruby lighthouse)
# 请谨慎添加过多的插件，否则会减慢 shell 启动速度。
plugins=(
  git
  bashmarks
)

# 指定有条件加载的插件。（插件位于 ~/.oh-my-bash/plugins/*）
# 自定义插件可以添加到 ~/.oh-my-bash/custom/plugins/。
# 示例格式：
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

# 加载 oh-my-bash 主程序
source "$OSH"/oh-my-bash.sh

# 用户自定义配置
# export MANPATH="/usr/local/man:$MANPATH"

# 如果需要手动设置语言环境，请设置以下变量。
# export LANG=en_US.UTF-8

# 本地和远程会话的首选编辑器
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# 编译标志
# export ARCHFLAGS="-arch x86_64"

# SSH 配置
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# 定义个人别名，覆盖 oh-my-bash 库、插件和主题提供的默认别名。
# 别名可以放在这里，但建议将别名定义放在 OSH_CUSTOM 文件夹中。
# 若要查看所有激活的别名，请运行 `alias`。
#
# 示例别名
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"
alias vim='nvim' # 将 vim 替换为 nvim
alias dps='docker ps --format "table {{.ID}}	{{.Names}}	{{.Ports}}	{{.Status}}"' # 更友好的 Docker 容器列表
alias dis='docker images' # 显示 Docker 镜像
alias ra='ranger' # 快速启动文件管理器 ranger
alias neofetch='neofetch --ascii ~/.config/neofetch/ascii-art-neofetch/communist'
