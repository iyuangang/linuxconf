# debian
```
sudo apt-get install vim vim-scripts vim-gtk vim-gnome
```
```
sudo apt-get install build-essential libncurses5-dev
```
```
sudo apt-get install python-dev python3-dev ruby-dev liblua5.2-dev libperl-dev libtcl8.6 libgnomeui-dev libx11-dev libxt-dev libxpm-dev
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
    --enable-perlinterp=yes \
    --enable-rubyinterp=yes \
    --with-ruby-command=/usr/bin/ruby \
    --enable-luainterp=yes \
    --enable-pythoninterp=yes \
    --enable-python3interp=yes \
    --enable-tclinterp=yes \
    --enable-gui=auto \
    --enable-gnome-check \
    --enable-sniff \
    --enable-xim \
    --enable-fontset \
    --with-x \
    --with-compiledby=$USER

make && src/vim --version
```
