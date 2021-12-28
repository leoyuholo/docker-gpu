#!/bin/sh
# set -e

# extensions:
pip install jupyterlab_sublime
pip install aquirdturtle_collapsible_headings
pip install jupyterlab-topbar
pip install jupyter-resource-usage
pip install jupyterlab-system-monitor
pip install jupyterlab_execute_time

# formatter:
pip install jupyterlab_code_formatter
pip install black isort

# variable inspector:
pip install lckr-jupyterlab-variableinspector

# diff:
pip install nbdime

# rich editor:
pip install jupyterlab-lsp
pip install 'python-lsp-server[all]'
# mamba install -y -c conda-forge jupyter-lsp-python pyls-black
ln -s / ~/.lsp_symlink

# kite:
# bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"
# pip install "jupyterlab-kite>=2.0.2"

# spellchecker:
pip install jupyterlab-spellchecker

# quickopen
# pip install jupyterlab-quickopen

# interactive matplotlib:
pip install ipympl

# git:
# pip install --upgrade jupyterlab-git

# voila:
pip install voila

# chown jovyan:jovyan -R ~/

# rebuild frontend:
jupyter lab build
