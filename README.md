
[TOC]

## 1  安装 neovim、vim-plug插件
sudo  add-apt-repository ppa:neovim-ppa/unstable

sudo  apt update

sudo  apt install -y neovim

`curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

## 2  安装nodejs 

sudo  add-apt-repository ppa:chris-lea/node.js
sudo  apt update
sudo  apt install -y nodejs npm

## 3 安装instant-markdown-d
sudo  npm -g install instant-markdown-d

## 4 安装pynvim 
pip3 install --user --upgrade pynvim

## 5 安装yarn
`curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`

`echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`

sudo  apt update

sudo  apt install -y yarn npm

## 6 安装ccls
sudo  apt install -y llvm clang

cd

`git clone --depth=1 --recursive https://github.com/MaskRay/ccls`

cd ccls

`cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_PREFIX_PATH=/path/to/clang+llvm`

sudo  cmake --build Release --target install


## 复制粘贴

`sudo apt install xclip`
