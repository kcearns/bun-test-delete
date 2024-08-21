FROM node:20.15-slim

RUN apt-get update && apt-get install curl unzip -y

ENV BUN_INSTALL="/root/.bun"
ENV PATH="$BUN_INSTALL/bin:$PATH"
RUN curl -fsSL https://bun.sh/install | bash

ENTRYPOINT [ "tail", "-f", "/dev/null" ]