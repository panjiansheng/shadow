apt update;
apt install -y python-pip python-setuptools;
pip install --upgrade pip;
pip install shadowsocks;
/usr/local/bin/ssserver -p 8388 -k 12345678 -m aes-256-cfb --user nobody --workers 2 -d start;
sed -i '2i\/usr/local/bin/ssserver -p 8388 -k 12345678 -m aes-256-cfb --user nobody --workers 2 -d start' /etc/rc.local
