#!/bin/bash

docker-compose -p ${USER}-gpu exec jupyter /bin/bash -c 'cd /tf && /bin/bash'
