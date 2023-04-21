# Docker-colab-runtime-local

This is a Docker container that replicates the colab runtime environment, used to quickly launch a container that is almost identical to the colab environment, allowing for colab to connect to local GPUs for computation.

## How to use

### Docker Run

**Notice:** This image size is almost ~28GB, Please be careful to reserve network traffic and disk space. 

```sh
docker run -it -d --gpus all --name colab -v content:/content -p 8888:8888 wsvn/colab-runtime-local:latest 
```

Or, You can also build docker image from Dockerfile:

```sh
docker build . -t colab-runtime-local
```

The build process may take a long time. After that, start the container as described above.

### Connect from colab

After docker container started, you can get the full url or notebook token from logs or terminal.

Then, you can connect the local container by following the instructions of google colab.

### Network forward

It is possible that the computer with a graphics card you have installed is not the one currently running Colab. However, Colab only allows connections to be made to localhost, so you may need to map the remote port to a local port:

```sh
ssh -N -L 8888:localhost:8888 user@host
```

## Limits

The following are some capabilities that may work in Google Colab but may not run locally:

* Mount Google Drive with: google.colab.drive

## Tested

Tested the following colab notebooks on Ubuntu 22.05 host with Tesla T4:

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/MarkSchmidty/ChatGLM-6B-Int4-Web-Demo/blob/main/ChatGLM-6B_int4_Web_Demo.ipynb) | ChatGLM-6B

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/hollowstrawberry/kohya-colab/blob/main/Lora_Trainer.ipynb) | Lora Trainer

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/camenduru/ControlNet-v1-1-nightly-colab/blob/main/ControlNet-v1-1-nightly.ipynb) | ControlNet-1.1-all_in_one

If you encounter any issues while using it elsewhere, please submit an issue.

# License

Apache License 2.0