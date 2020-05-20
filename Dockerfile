FROM node:latest
WORKDIR /app
COPY package.json .
RUN npm install --global @gridsome/cli
RUN npm install
COPY . .
RUN gridsome build
RUN cp -r .build /var/www/html
EXPOSE 8080
CMD gridsome develop
