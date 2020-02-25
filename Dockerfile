FROM node:carbon

# from https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

#Create app dir
WORKDIR /usr/src/app

# * includes package-lock.json (npm@5+):
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
