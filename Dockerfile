# Dockerfile reference documentation
# https://docs.docker.com/engine/reference/builder/

# Base image - Alternatives: Conda, Python...
FROM continuumio/miniconda3

# Metadata - optional
LABEL base.image="miniconda3"
LABEL version="0.1"
LABEL software=""
LABEL software.version=""
LABEL description=""
LABEL website=""
LABEL documentation=""
LABEL license=""
LABEL tags=""

# Maintainer
LABEL authors="Inês Mendes <cimendes@medicina.ulisboa.pt>,Nuno Agostinho <nunoagostinho@medicina.ulisboa.pt"

# System essentials

# Set up workdir for installation 
WORKDIR /data

# Dependencies

# Instalation
RUN conda install -c conda-forge -c bioconda -c defaults

# Set up Path
