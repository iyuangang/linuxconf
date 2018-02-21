```
./configure \
    --prefix=/usr/local \
    --with-features=huge \
    --with-ruby-command=/usr/bin/ruby \
    --with-python-config-dir=/usr/lib/python2.7/config \
    --with-x \
    --with-luajit –enable-fail-if-missing \
    --with-lua-prefix=/usr/local \
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
