#!bin/bash
set -e

DIR=$(dirname "${0}")

apt update
/bin/bash -x ${DIR}/install_env.sh
# /bin/bash -x ${DIR}/install_python39.sh
/bin/bash -x ${DIR}/install_conda.sh

# echo "Please logout first (exit or ctrl-D), and login again using 'exec.sh', then run 'scripts/setup_cont.sh' to complete setup"
