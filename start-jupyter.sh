#!/bin/bash

jupyter notebook --notebook-dir=/content --ip='*' \
    --port=8888 --no-browser --allow-root \
    --NotebookApp.allow_origin='https://colab.research.google.com' \
    --NotebookApp.port_retries=0