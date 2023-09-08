# CentOS 7 环境初始化

## 安装依赖

### 升级系统

```bash

yum update -y 

```

### 安装扩展源

```bash

yum install -y centos-release-scl epel-release

```

### yum 安装工具包


```bash

yum install -y perl-IPC-Cmd perl-Test-Simple xz-devel xz-libs autoconf automake bzip2 bzip2-devel git freetype-devel gcc gcc-c++ git libtool make pkgconfig zlib-devel librsvg2-devel librsvg2-tools librsvg2 libselinux-devel libselinux-static libmount-devel libffi libffi-devel

```

## 安装 brew

```bash

export NONINTERACTIVE=1
export DEBIAN_FRONTEND=noninteractive
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
/bin/bash -c "$(curl -fsSL https://mirrors.ustc.edu.cn/misc/brew-install.sh)"

````

### brew 安装工具

```bash

/home/linuxbrew/.linuxbrew/bin/brew install fd rg llvm neovim node htop iftop nload atop go gopls bat

```

###  rc(run command) 文件

```bash

rm -rf ~/.inputrc && cp inputrc ~/.inputrc
rm -rf ~/.tmux.conf && cp tmux.conf ~/.tmux.conf
rm -rf ~/.z.lua && mkdir ~/.z.lua && cp z.lua ~/.z.lua/z.lua
rm -rf ~/.tmux/plugins/fzf && mkdir -p ~/.tmux/plugins/fzf && cp tmux/fzf ~/.tmux/plugins/fzf/ && cp tmux/tm ~/.tmux/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

### ctag

```bash

git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure
make
make install

```
