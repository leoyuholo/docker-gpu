#!/bin/bash

USERID=$(id -u) GROUPID=$(id -g) docker-compose -p ${USER}-gpu up -d
