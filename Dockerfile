# Set Base Image
FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Run dependencies
RUN npm install

# Bundle source code for our app
COPY . .

# Bind our app to a port
EXPOSE 8080

# Setup default commands
CMD [ "npm", "start"]
