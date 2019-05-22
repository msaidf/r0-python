FROM rocker/binder:3.6.0
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

RUN pip3 install --no-cache-dir bs4 notedown neovim jupyterlab matplotlib numpy pandas pytrends \
	jupyter_nbextensions_configurator jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install && \
	jupyter nbextensions_configurator enable

USER root
RUN apt-get update && \
	apt-get install -y libzmq3-dev python-pip curl bzip2 neovim libv8-3.14-dev libjq-dev libsasl2-dev libsodium-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/
