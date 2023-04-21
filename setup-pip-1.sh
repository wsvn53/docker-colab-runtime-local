#!/bin/bash

set -x -e

export DEBIAN_FRONTEND=noninteractive;

# Install some required pakcages first
pip install jaxlib==0.4.7+cuda11.cudnn86 -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
pip install pep517==0.13.0 p5py

# fix typeing.BinaryIO missing error, but still need to modify .py to use this typing
pip install cupy-cuda11x==11.0.0

pip install --extra-index-url https://us-python.pkg.dev/colab-wheels/public/simple --extra-index-url https://download.pytorch.org/whl/cu118 absl-py==1.4.0 alabaster==0.7.13 albumentations==1.2.1 altair==4.2.2 anyio==3.6.2 appdirs==1.4.4 argon2-cffi==21.3.0 argon2-cffi-bindings==21.2.0 arviz==0.15.1 astropy==5.2.2 astunparse==1.6.3 attrs==22.2.0 audioread==3.0.0 autograd==1.5 Babel==2.12.1 backcall==0.2.0 beautifulsoup4==4.11.2 bleach==6.0.0 blis==0.7.9 blosc2==2.0.0 bokeh==2.4.3 branca==0.6.0 CacheControl==0.12.11 cached-property==1.5.2 cachetools==5.3.0 catalogue==2.0.8 certifi==2022.12.7 cffi==1.15.1 chardet==4.0.0 charset-normalizer==2.0.12 chex==0.1.7 click==8.1.3 cloudpickle==2.2.1 cmake==3.25.2 cmdstanpy==1.1.0 colorcet==3.0.1 colorlover==0.3.0 community==1.0.0b1 confection==0.0.4 cons==0.4.5 contextlib2==0.6.0.post1 contourpy==1.0.7 convertdate==2.4.0 cryptography==40.0.1 cufflinks==0.17.3 cvxopt==1.3.0 cvxpy==1.3.1 cycler==0.11.0 cymem==2.0.7 Cython==0.29.34 dask==2022.12.1 datascience==0.17.6 db-dtypes==1.1.1 dbus-python==1.2.16 debugpy==1.6.6 decorator==4.4.2 defusedxml==0.7.1 distributed==2022.12.1 dlib==19.24.1 dm-tree==0.1.8 docutils==0.16 dopamine-rl==4.0.6 earthengine-api==0.1.348 easydict==1.10 ecos==2.0.12 editdistance==0.6.2 entrypoints==0.4 ephem==4.1.4 et-xmlfile==1.1.0 etils==1.2.0 etuples==0.3.8 exceptiongroup==1.1.1 fastai==2.7.12 fastcore==1.5.29 fastdownload==0.0.7 fastjsonschema==2.16.3 fastprogress==1.0.3 fastrlock==0.8.1 filelock==3.11.0 firebase-admin==5.3.0 Flask==2.2.3 flatbuffers==23.3.3 flax==0.6.8 folium==0.14.0 fonttools==4.39.3 frozendict==2.3.7 fsspec==2023.4.0 future==0.18.3 gast==0.4.0 
