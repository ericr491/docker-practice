FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v

RUN npm install

RUN npm install -g serve

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

RUN npm run build

CMD ["serve", "-s", "-l", 5000, "build"]
