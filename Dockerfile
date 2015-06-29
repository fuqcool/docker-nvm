FROM ubuntu

RUN apt-get update && \
    apt-get install -y libssl-dev \
    	    build-essential \
    	    curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
