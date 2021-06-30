FROM node:14-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .
RUN npm install

EXPOSE 7000

CMD ["nginx", "-c", "/data/conf/nginx.conf"]

CMD node ./