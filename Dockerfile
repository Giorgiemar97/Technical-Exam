FROM node:latest
#This is to make sure that it runs the one from the project.
WORKDIR /app
#This is to make sure to set the directory in the container.
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "node-hostname.js"]
