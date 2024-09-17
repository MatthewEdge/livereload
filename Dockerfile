FROM node:alpine
WORKDIR /usr/src/app

RUN npm install -g live-server

# Mount to /usr/src/app
ARG BROWSER="firefox"
ENTRYPOINT live-server --port=8000 --host=0.0.0.0 --browser=${BROWSER} --no-css-inject --wait=100
