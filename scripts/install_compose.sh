# deprecated, use sudo apt install docker-compose-plugin
#!/bin/bash

# sudo /bin/sh -c 'curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
# sudo chmod +x /usr/local/bin/docker-compose
sudo apt update
sudo apt install docker-compose-plugin
