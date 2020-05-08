FROM node:latest
WORKDIR /app
COPY package.json .
RUN npm install --global @gridsome/cli
RUN npm install
COPY . .
EXPOSE 8080
CMD gridsome develop
