FROM node:20.17.0-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN npm install -g serv
EXPOSE 3000
CMD ["serve", "-s", "build", "-l", "3000"]
