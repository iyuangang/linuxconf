# Refresh zypper repo
1. Remove the origin repo `sudo zypper mr -da`
2. Add local reop `sudo zypper ar -f repo_url defile_your_reop_name`
3. Refresh repo cache `sudo zypper ref`
4. List the repo `sudo zypper lr`
More detail `sudo zypper --help`

```
sudo zypper ar -f https://mirrors.aliyun.com/opensuse/distribution/leap/42.3/repo/oss/ aliyun_OSS 
sudo zypper ar -f https://mirrors.aliyun.com/opensuse/distribution/leap/42.3/repo/non-oss/ aliyun_Non-OSS
sudo zypper ar -f https://mirrors.aliyun.com/opensuse/update/leap/42.3/oss/ aliyun_Update_OSS
sudo zypper ar -f https://mirrors.aliyun.com/opensuse/update/leap/42.3/non-oss/ aliyun_Update_Non-OSS
sudo zypper ar -f https://mirrors.aliyun.com/packman/openSUSE_Leap_42.3/ aliyun_Packman
```
# Update system
```
sudo zypper up
```
# Install useful software
```
sudo zypper in zsh git curl cmake vim tmux
```
# Install dependent Libraries
```
sudo zypper install ncurses-devel lua lua-devel \
libcairo2-devel libx11-devel libxpm-devel libxt-devel \
llvm-clang-devel llvm-devel boost-devel ruby-devel \
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
    --with-ruby-command=/usr/bin/ruby \
    --with-lua-prefix=/usr/local/ \
    --with-python-config-dir=/usr/lib64/python2.7/config \
    --with-x \
    --with-compiledby=$USER \
    --enable-multibyte \
    --enable-cscope=yes \
    --enable-perlinterp=yes \
    --enable-rubyinterp=yes \
    --enable-luainterp=yes \
    --enable-pythoninterp=yes \
    --enable-python3interp=yes \
    --enable-tclinterp=yes \
    --enable-gui=auto \
    --enable-gnome-check \
    --enable-xim \
    --enable-fontset
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
Before install VIM add 2 line below to `.vimrc.before.local`
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
trans :zh hello
```
