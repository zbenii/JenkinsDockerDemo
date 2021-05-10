FROM node:lts-alpine as builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
EXPOSE 8080
CMD ["node", "dist/server.js"]