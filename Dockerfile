FROM node:14.21-alpine
WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 1337
CMD [ "npm", "run", "start" ]
