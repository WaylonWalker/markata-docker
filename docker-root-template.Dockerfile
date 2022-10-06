From python:3.11.0rc2-slim

RUN apt update && apt install git -y
RUN pip install markata==${VERSION}

WORKDIR /src
# GitHub Actions misses this path
ENV PYTHONPATH=$PATH:/usr/local/lib/python3.10/site-packages

ENTRYPOINT ["markata"]
