FROM node:lts-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --legacy-peer-dep
COPY . .
RUN npm run build

RUN npm run build

# CREATE NGINX SERVER
FROM nginx:1.21.6-alpine AS prod-stage
COPY --from=build /app/dist /usr/share/nginx/html
