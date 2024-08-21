FROM ubuntu:22.04

RUN apt-get update && apt-get install curl unzip -y

# Install Node.js and npm
RUN apt-get install -y nodejs npm

ENV BUN_INSTALL="/root/.bun"
ENV PATH="$BUN_INSTALL/bin:$PATH"
RUN curl -fsSL https://bun.sh/install | bash

ENTRYPOINT [ "tail", "-f", "/dev/null" ]