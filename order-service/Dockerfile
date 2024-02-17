# Use Node.js version 14 as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy all source code to the working directory in the container
COPY package*.json ./

# Install dependencies for production and then build the application
RUN npm install

COPY . .
# Expose the port used by the application, 3000
EXPOSE 3000

ENV PORT=3000
ENV AMQP_URL="amqp://guest:guest@localhost:5672"

# When the container is launched, run the server with the command npm start
CMD [ "node", "index.js" ]