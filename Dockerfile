FROM node:10-alpine

RUN apk add --no-cache python2 make

COPY . /flagwaver
WORKDIR /flagwaver
RUN npm install

EXPOSE 8000

CMD npm rebuild node-sass && npm run start-test