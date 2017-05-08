FROM andrewosh/binder-base

MAINTAINER Andrew Osheroff <andrewosh@gmail.com>

USER root

# Add Julia dependencies
RUN apt-get update
RUN apt-get install -y abinit abinit-doc && apt-get clean

USER main

RUN conda config --add channels conda-forge
RUN conda install -y -n python3 ase spglib jupyter nglview
