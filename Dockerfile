FROM node:9.4-alpine

RUN mkdir /tldr

COPY .env /tldr
COPY package.json /tldr
COPY yarn.lock /tldr
COPY src /tldr

WORKDIR /tldr

RUN yarn install

EXPOSE 8888

