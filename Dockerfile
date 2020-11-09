FROM node

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

RUN npm install pm2 -g

COPY . .

EXPOSE 5001

CMD ["pm2-runtime", "app.js"]