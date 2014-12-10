var=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
echo $var
sudo ifconfig en0 ether $var
sudo ifconfig en0 down
sudo ifconfig en0 up