FROM ghcr.io/tgoelles/python_docker:v0.5.7_py3.11

ENV DEBIAN_FRONTEND=noninteractive

# Add linux packages here
# RUN apt-get update \
#     # add packages here like
#     && apt-get -y install WHATEVER WHATEVER2 \
#     # Clean up
#     && apt-get autoremove -y \
#     && apt-get clean -y \
#     && rm -rf /var/lib/apt/lists/*


# Add python packages to the environment.yml file and uncommend here
SHELL ["/bin/bash", "-c"]

COPY environment.yml /tmp/environment.yml
RUN conda env update --name base --file /tmp/environment.yml && \
    conda clean --all --yes

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=""
