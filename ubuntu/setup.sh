# key board layout
# sudo dpkg-reconfigure keyboard-configuration

sudo apt update -y

sudo apt install -y \
  zsh \
  ssh \
  make \
  build-essential \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  wget \
  curl \
  llvm \
  libncurses5-dev \
  xz-utils \
  tk-dev \
  golang \
  exfat-fuse \
  exfat-utils \

# pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pyenv virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

# ghq
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"
go get github.com/motemen/ghq
