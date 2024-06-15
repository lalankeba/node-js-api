# install nodejs
FROM node:14

# application folder
WORKDIR /usr/src/app

# copy package.json file from the local machine to container
COPY package.json ./

# install dependencies
RUN npm install

# write the code inside the folder
COPY . .

EXPOSE 3000

# run the application in port 3000
CMD ["node", "app.js"]
