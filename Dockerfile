FROM node:10

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
COPY package.json /app
COPY package-lock.json /app
RUN npm install

COPY . /app
RUN npm run build

# start command when container init
CMD npm run start
