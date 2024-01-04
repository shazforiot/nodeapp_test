FROM nodeapp:v1

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
