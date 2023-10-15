FROM node:16-alpine

COPY package.json /app/package.json

COPY package-lock.json /app/package-lock.json

WORKDIR /app

RUN npm ci

COPY . /app

COPY . /app

CMD ["npm", "run", "start:prod"]
