# Use Node.js version 14 as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy all source code to the working directory in the container
COPY . .

# Set the application to run in production mode and use a container named item-db as the database host
ENV NODE_ENV=production

# Install dependencies for production and then build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose the port used by the application, 3000
EXPOSE 3000

# When the container is launched, run the server with the command npm start
CMD [ "npm", "start" ]