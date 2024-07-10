FROM node:16.0.0

WORKDIR /node
COPY package.json ./
RUN npm install
COPY . .
ENTRYPOINT ["node","app.js"]
EXPOSE 3005