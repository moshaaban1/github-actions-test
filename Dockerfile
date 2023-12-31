FROM node:18-alpine

WORKDIR /app

COPY ./package.json ./
RUN apk add gcc g++ make python3
RUN npm install

COPY . .

CMD [ "npm", "run", "start" ]
