
iftop
### tmux
```
~/.tmux.conf
export TERM=xterm-256color
~/.zshrc
set-option -g default-terminal "screen-256color"
```

```
grep -H -r "simple"

```
```
yum check-update
```
```
sudo yum install epel-release 
```
```
sudo yum clean all
```
```
sudo yum makecache
```
### VIM
```
sudo yum install cmake
```
```
yum -y install libevent-devel python-devel
```
```
yum install -y ruby ruby-devel lua lua-devel luajit \
luajit-devel ctags git python python-devel \
python3 python3-devel tcl-devel \
perl perl-devel perl-ExtUtils-ParseXS \
perl-ExtUtils-XSpp perl-ExtUtils-CBuilder \
perl-ExtUtils-Embed ncurses-devel
```
```
./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-pythoninterp=yes \
--with-python-config-dir=/usr/lib/python2.7/config \
--enable-python3interp=yes \
--with-python3-config-dir=/usr/lib/python3.5/config \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-gui=gtk2 --enable-cscope --prefix=/usr
```
```
make VIMRUNTIMEDIR=/usr/share/vim/vim80
```
```
sudo make install
```
### phpmyadmin
```
<Directory /usr/share/phpMyAdmin/>
                                    AddDefaultCharset UTF-8

                                    <IfModule mod_authz_core.c>
# Apache 2.4
                                    <RequireAny>
#Require ip 127.0.0.1
#Require ip ::1
                                    Require all granted
                                    </RequireAny>
                                    </IfModule>
                                    <IfModule !mod_authz_core.c>
# Apache 2.2
                                    Order Deny,Allow
                                    Deny from All
                                    Allow from 127.0.0.1
                                    Allow from ::1
                                    </IfModule>
                                    </Directory>
```
