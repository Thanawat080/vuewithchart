# FROM node:lts-alpine
# WORKDIR /app
# COPY package.json ./
# RUN npm install --legacy-peer-dep
# COPY . .
# RUN npm run build

# RUN npm run build

# # CREATE NGINX SERVER
# FROM nginx:1.21.6-alpine AS prod-stage
# COPY --from=build /app/dist /usr/share/nginx/html



# Use an official Node.js runtime as the base image
FROM node:14 as build-stage

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install --legacy-peer-dep

# Copy all project files to the working directory
COPY . .

# Build the Vue.js application
RUN npm run build

# Use a lightweight Nginx image as the base image for serving the static files
FROM nginx:alpine

# Copy the built static files from the previous stage to the Nginx HTML directory
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
