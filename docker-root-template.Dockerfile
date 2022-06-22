From python:slim

# Setup markata user so that docker build does not create files owned by root
ARG MARKATA_UID=1000
ARG MARKATA_GID=1000
RUN groupadd -f -g ${MARKATA_GID} markata && \
    useradd -d /home/markata -s /bin/bash -g ${MARKATA_GID} -u ${MARKATA_UID} markata
RUN mkdir /home/markata && chown -R markata:markata /home/markata && mkdir /src && chown markata:markata /src
USER markata
WORKDIR /home/markata
ENV PATH=$PATH:/home/markata/.local/bin

RUN pip install markata==${VERSION}

WORKDIR /src

ENTRYPOINT ["markata"]
