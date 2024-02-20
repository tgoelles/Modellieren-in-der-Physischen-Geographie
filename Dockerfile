# Use the custom image as the base
FROM ghcr.io/tgoelles/modellieren-in-der-physischen-geographie:main

# Set up the user environment for Binder
ARG NB_USER=unigraz
ARG NB_UID=1000
ARG NB_GID=100

# Create user with UID=1000 and GID=100
RUN groupadd -r ${NB_USER} --gid=${NB_GID} && \
    useradd -rm -d /home/${NB_USER} -s /bin/bash -g ${NB_USER} --uid=${NB_UID} ${NB_USER}

# Set environment variables
ENV USER=${NB_USER} \
    NB_UID=${NB_UID} \
    NB_GID=${NB_GID} \
    HOME=/home/${NB_USER}

# Set the working directory
WORKDIR ${HOME}

# Switch to the user
USER ${NB_USER}

# Expose the notebook port
EXPOSE 8888

# Start the Jupyter notebook server
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]
