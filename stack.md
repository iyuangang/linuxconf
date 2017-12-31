
# Perl locale warning Debian

Try setting the locales directly this way, it worked for me on Ubuntu 10.04, just tailor the locales to your needs:
```
# export LANGUAGE=en_US.UTF-8
# export LANG=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
# locale-gen en_US.UTF-8
```
and then:
```
# dpkg-reconfigure locales
# localectl set-locale LANG=en_US.UTF-8
```
This can help!

# Git push need input Password every time

```
$ git remote rm origin
$ git remote add origin git@github.com:(user name)/(profile name)
```
