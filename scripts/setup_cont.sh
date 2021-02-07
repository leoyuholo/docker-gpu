#!bin/bash
set -e

DIR=$(dirname "${0}")

/bin/bash -x ${DIR}/install_mamba.sh
/bin/bash -x ${DIR}/install_pip.sh
/bin/bash -x ${DIR}/install_lab.sh
# /bin/bash -x ${DIR}/install_fastai.sh
