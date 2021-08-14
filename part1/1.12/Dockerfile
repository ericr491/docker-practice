FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v

RUN npm install

RUN npm install -g serve

RUN npm run build

CMD ["serve", "-s", "-l", 5000, "build"]
