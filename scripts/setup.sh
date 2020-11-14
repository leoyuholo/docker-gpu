#!bin/bash
set -e

DIR=$(dirname "${0}")

/bin/bash -x ${DIR}/install_env.sh
/bin/bash -x ${DIR}/install_python38.sh
/bin/bash -x ${DIR}/install_conda.sh
/bin/bash -x ${DIR}/install_lab.sh
/bin/bash -x ${DIR}/install_fastai.sh

# exec bash
