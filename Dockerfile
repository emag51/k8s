FROM node:lts-alpine

ENV NODE_ENV=production

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --production --silent

COPY . .

EXPOSE 8080

CMD ["npx", "nodemon", "app.js"]

# FROM node:lts-alpine

# ENV NODE_ENV=production

# WORKDIR /usr/src/app

# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

# RUN npm install --production --silent && mv node_modules ../

# COPY . .

# EXPOSE 8080

# RUN chown -R node /usr/src/app

# USER node

# CMD ["npx", "nodemon", "app.js"]


# FROM node:lts-alpine
# ENV NODE_ENV=production
# WORKDIR /usr/src/app
# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
# RUN npm install --production --silent && mv node_modules ../
# RUN npm install -g "nodemon app.js"
# COPY . .
# EXPOSE 8080
# RUN chown -R node /usr/src/app
# USER node
# CMD ["npm", "start"]
