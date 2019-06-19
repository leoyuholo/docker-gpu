#!bin/bash
DIR=$(dirname "${0}")

/bin/bash -x ${DIR}/install_env.sh
/bin/bash -x ${DIR}/install_conda.sh
/bin/bash -x ${DIR}/install_lab.sh

exec bash
