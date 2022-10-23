#!/bin/sh
# set -e

# packages:
pip install pandas altair pydash pymongo plotly bokeh seaborn plotnine
npm install -y vega-lite vega-cli canvas
mamba install -y -c conda-forge altair_saver vega-cli vega-lite-cli
apt install -y fontconfig --reinstall

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
# pip install jupyterlab-lsp
# pip install 'python-lsp-server[all]'
# mamba install -y -c conda-forge jupyter-lsp-python pyls-black
# ln -s / ~/.lsp_symlink

# tabnine
pip install jupyter-tabnine --user
jupyter nbextension install --py jupyter_tabnine --user
jupyter nbextension enable --py jupyter_tabnine --user
jupyter serverextension enable --py jupyter_tabnine --user

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
