FROM nvidia/cuda:11.8.0-devel-ubuntu20.04

ENV LANG=C.UTF-8 LCALL=C.UTF-8

RUN mkdir -pv /opt/colab-runtime-local
COPY *.sh /opt/colab-runtime-local
RUN chmod +x /opt/colab-runtime-local/*.sh

# Execute setup.sh
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-sources.sh

# Install apt packages listed from colab container: apt list --installed
# apt install list too long, seperate into multipile commands
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-apt-1.sh
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-apt-2.sh
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-apt-3.sh
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-apt-4.sh
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-apt-5.sh

# Install pip packages listed from colab container: pip list
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-pip-1.sh
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-pip-2.sh
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-pip-3.sh

# Install jupyter and colab tools
RUN /opt/colab-runtime-local/auto-retry.sh /opt/colab-runtime-local/setup-jupyter.sh

# Expose Jupyter Notebook Port
EXPOSE 8888

# 设置工作目录
WORKDIR /content

# Start Jupyter Notebook
CMD "/opt/colab-runtime-local/start-jupyter.sh"
