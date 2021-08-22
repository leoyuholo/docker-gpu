#!bin/bash
set -e

# voila [OPTIONS] NOTEBOOK_FILENAME

# This launches a stand-alone server for read-only notebooks.

# Options
# =======
# notebook_path:
#     File name of the Jupyter notebook to display.

# --debug
#     Set the log level to logging.DEBUG, and show exception tracebacks in output.
#     Equivalent to: [--Voila.log_level=10 --Voila.show_tracebacks=True]
# --no-browser
#     Don't open the notebook in a browser after startup.
#     Equivalent to: [--Voila.open_browser=False]
# --port=<Int>
#     Port of the Voilà server. Default 8866.
#     Default: 8866
#     Equivalent to: [--Voila.port]
# --static=<Unicode>
#     Directory holding static assets (HTML, JS and CSS files).
#     Default: '/opt/conda/lib/python3.8/site-packages/voila/static'
#     Equivalent to: [--Voila.static_root]
# --strip_sources=<Bool>
#     Strip sources from rendered html
#     Default: True
#     Equivalent to: [--VoilaConfiguration.strip_sources]
# --autoreload=<Bool>
#     Will autoreload to server and the page when a template, js file or Python
#     code changes
#     Default: False
#     Equivalent to: [--Voila.autoreload]
# --template=<Unicode>
#     template name to be used by voila.
#     Default: 'lab'
#     Equivalent to: [--VoilaConfiguration.template]
# --theme=<Unicode>
#     Default: 'light'
#     Equivalent to: [--VoilaConfiguration.theme]
# --base_url=<Unicode>
#     Path for Voilà API calls. If server_url is unset, this will be
#     used for both the base route of the server and the client.             If
#     server_url is set, the server will server the routes prefixed             by
#     server_url, while the client will prefix by base_url (this is
#     useful in reverse proxies).
#     Default: '/'
#     Equivalent to: [--Voila.base_url]
# --server_url=<Unicode>
#     Path to prefix to Voilà API handlers. Leave unset to default to base_url
#     Default: None

port=8866
if [ -z VOILA_PORT ]; then
  port=${VOILA_PORT}
fi

voila --port ${port}
