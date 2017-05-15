#very simple dockerfile

FROM node:alpine

ADD ["./public", "./public"]

ADD ["./views", "./views"]

ADD ["./app.js", "./"]

ADD ["./pack*.json", "./"]

RUN\
    npm install

CMD ["node", "./app.js"]
