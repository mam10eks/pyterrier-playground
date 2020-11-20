FROM jupyter/datascience-notebook

USER root

RUN apt-get update && \
	apt-get install -y openjdk-11-jdk

USER jovyan

RUN pip install --upgrade git+https://github.com/terrier-org/pyterrier.git#egg=python-terrier &&\
	echo "import pyterrier as pt\npt.init()" |python3

