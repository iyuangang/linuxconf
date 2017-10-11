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
sudo zypper install ncurses-devel libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
python3-dev ruby-dev lua5.1 lua5.1-dev gcc-c++ gtk2-devel
```
# Compile VIM source
```
git clone https://github.com/vim/vim.git
```

```
cd vim
```

```
./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp \
--enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
--enable-perlinterp \
--enable-luainterp \
--enable-gui=gtk2 --enable-cscope --prefix=/usr
```

```
make VIMRUNTIMEDIR=/usr/share/vim/vim80
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
