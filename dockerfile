FROM node:latest
WORKDIR /NODE-RUTAS2
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]