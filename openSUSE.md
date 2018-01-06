１、修改软件源
（１）删除所有软件源sudo zypper mr -da
（２）添加软件源sudo zypper ar -f 软件源url 自定义name
（３）刷新软件源sudo zypper ref
查看已定义软件源sudo zypper lr
详看sudo zypper --help

```
sudo zypper ar -f http://mirrors.aliyun.com/opensuse/tumbleweed/repo/oss/ oss 
sudo zypper ar -f http://mirrors.aliyun.com/opensuse/tumbleweed/repo/non-oss/ Non-OSS
sudo zypper ar -f http://download.opensuse.org/update/tumbleweed/ Update 
sudo zypper ar -f http://mirrors.aliyun.com/packman/openSUSE_Tumbleweed/ Packman
```


# Add local reop
```
http://mirrors.ustc.edu.cn/opensuse/tumbleweed/repo/oss/
http://mirrors.ustc.edu.cn/opensuse/tumbleweed/repo/non-oss/
http://download.opensuse.org/repositories/openSUSE:/Factory:/Update/standard/
http://mirrors.aliyun.com/packman/openSUSE_Tumbleweed/
```
# Install dependent Libraries
```
sudo zypper install ncurses-devel lua lua-devel\
libcairo2-devel libx11-devel libxpm-devel libxt-devel \
llvm-clang-devel llvm-devel boost-devel \
patterns-openSUSE-devel_python patterns-openSUSE-devel_python3 \
patterns-openSUSE-devel_perl patterns-openSUSE-devel_ruby \
patterns-openSUSE-devel_C_C++
```
# Compile VIM source
```
git clone https://github.com/vim/vim.git
```

```
cd vim
```

```
./configure -h
make clean
git clean -fdx

./configure \
    --prefix=/usr/local/ \
    --with-features=huge \
    --enable-multibyte \
    --enable-cscope=yes \
    --with-python-config-dir=/usr/lib/python2.7/config \
    --enable-perlinterp=yes \
    --enable-rubyinterp=yes \
    --with-ruby-command=/usr/bin/ruby \
    --enable-luainterp=yes \
    --enable-pythoninterp=yes \
    --enable-python3interp=yes \
    --enable-tclinterp=yes \
    --enable-gui=auto \
    --enable-gnome-check \
    --enable-xim \
    --enable-fontset \
    --with-x \
    --with-compiledby=$USER
```

```
make -j 16
```

```
sudo make install
```
# oh-my-zsh plugins
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
# YouCompleteMe and airline
```
let g:spf13_bundle_groups=['general', 'programming', 'misc', 'scala', 'youcompleteme']
```

```
let g:airline_powerline_fonts=1
```
# VIM spf13 install
```
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
```
# Compile YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe
```
```
./install.py --clang-completer
```
# Translate shell
```
git clone https://github.com/soimort/translate-shell && cd translate-shell
make
sudo make install
```
