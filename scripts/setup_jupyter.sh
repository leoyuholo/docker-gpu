#!/bin/sh
# set -e

# packages:
pip install pandas altair pydash matplotlib pymongo pika plotly bokeh seaborn plotnine
npm install -y vega-lite vega-cli canvas
mamba install -y -c conda-forge altair_saver vega-cli vega-lite-cli vega_datasets
apt install -y fontconfig --reinstall

# interactive matplotlib:
pip install ipympl

# voila:
pip install voila

# chown jovyan:jovyan -R ~/

# rebuild frontend:
jupyter lab build
