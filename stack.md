
# Perl locale warning Debian

Try setting the locales directly this way, it worked for me on Ubuntu 10.04, just tailor the locales to your needs:
```
root@hostname:~# export LANGUAGE=en_US.UTF-8
root@hostname:~# export LANG=en_US.UTF-8
root@hostname:~# export LC_ALL=en_US.UTF-8
root@hostname:~# locale-gen en_US.UTF-8
```
and then:
```
root@hostname:~# dpkg-reconfigure locales
```
This can help!
