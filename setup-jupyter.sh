#!/bin/bash

set -x -e

export DEBIAN_FRONTEND=noninteractive;

# Install jupyter and colab support tools
pip install jupyter jupyter_http_over_ws toml git+https://github.com/googlecolab/colabtools.git
jupyter serverextension enable --py jupyter_http_over_ws
