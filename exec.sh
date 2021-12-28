#!/bin/bash

docker-compose -p ${USER}-gpu exec jupyter /bin/bash -c 'cd /jupyter && /bin/bash'
