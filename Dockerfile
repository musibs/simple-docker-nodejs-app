# Specify the base image
FROM node:alpine

# Working directory
WORKDIR /usr/app

# Copy required files
COPY ./package.json ./

#Install dependencies
RUN npm install

# Copy changed files. Above copy is to prevent unnecesary builds
COPY ./ ./

# Execute this command on container start up
CMD ["npm", "start"]