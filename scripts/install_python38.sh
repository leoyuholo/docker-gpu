#!bin/bash
set -e

apt update
apt install -y python3.8
rm /usr/bin/python3
ln -s python3.8 /usr/bin/python3
python3 -V
