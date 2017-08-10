FROM ubuntu:rolling
MAINTAINER Murali Mohan Rath "murali@mmath.com"

# needed by cargo
ENV USER root
ENV SSL_CERT_DIR /etc/ssl/certs

ENV PATH=$PATH:$HOME/.cargo/bin
ADD install.sh install.sh
RUN chmod +x install.sh
RUN ./install.sh nightly
RUN rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]

