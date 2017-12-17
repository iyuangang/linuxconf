# linuxconf
ubuntu openSUSE centOS common config
```
screenfetch
```
```
apt-get build-dep
```

```
ssh-keygen -t rsa -C "your_email@youremail.com"
```
```
ssh -T git@github.com
```
```
git config --global user.name "your name"
```
```
git config --global user.email "your email@youremail.com"
```
```
gpg --gen-key
```
```
gpg --list-keys
```
```
gpg --armor --output public-key.txt --export [public-key ID]
```
```
git config --global user.signingkey [public-key ID]
```
```
git config --global commit.gpgsign true
```
```
git config -l

```
```
git remote rm origin
```
```
git remote add origin git@github.com:iyuangang/linuxconf.git
```
```
git push origin master
```
change string by one line code
```
sudo sed -i "s/oldstring/newstring/g" `grep oldstring -rl yourdir`
```
Chmod user:group dir
```
sudo chown nobody:nogroup /home/share
```
