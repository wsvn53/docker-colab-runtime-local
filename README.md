# docker-colab-runtime-local
This is a Docker container that replicates the colab runtime environment, used to quickly launch a container that is almost identical to the colab environment, allowing for colab to connect to local GPUs for computation.

Tested the following colab notebooks on Ubuntu 22.05 host with Tesla T4:

https://colab.research.google.com/github/MarkSchmidty/ChatGLM-6B-Int4-Web-Demo/blob/main/ChatGLM-6B_int4_Web_Demo.ipynb
https://colab.research.google.com/github/hollowstrawberry/kohya-colab/blob/main/Lora_Trainer.ipynb