FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install
RUN npm update
COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
