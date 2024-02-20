FROM ghcr.io/tgoelles/modellieren-in-der-physischen-geographie:main

# Set up the user environment for Binder
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER=${NB_USER} \
    NB_UID=${NB_UID} \
    HOME=/home/${NB_USER}

# Create the home directory and set permissions
RUN mkdir -p ${HOME} \
    && chown ${NB_USER}:${NB_UID} ${HOME}

# Switch to the user
USER ${NB_USER}

# Set the working directory
WORKDIR ${HOME}

# Expose the notebook port
EXPOSE 8888

# Start the Jupyter notebook server
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]