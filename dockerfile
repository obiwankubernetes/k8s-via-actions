# docker image of nodjs env
FROM node:12.17.0

# Create app directory
WORKDIR /usr/src/app

# copy packages for container env
COPY package.json ./

# install dependencies
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 1337
CMD [ "node", "index.js" ]