FROM node:lts-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --legacy-peer-dep
COPY . .
RUN npm run build
