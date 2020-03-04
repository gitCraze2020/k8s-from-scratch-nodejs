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

#note: the expose command does nothing, it's a documented suggestion from the
# developer of the image to the person running the container instance.
# run time parameter to docker: --publish 30001:8001 or -p 30001:8001
# where 8001 is the listening port in the container
EXPOSE 30001

CMD ["npm", "start"]
