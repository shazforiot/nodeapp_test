FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip
COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
