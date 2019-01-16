FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json
# AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./

RUN npm install

# Go through after initial tutorial
ARG AUTHOR_NAME=Brandon
ENV NAME=${AUTHOR_NAME}

RUN echo $NAME

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
