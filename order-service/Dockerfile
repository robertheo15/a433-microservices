# Use the official lightweight Node.js 18 image.
# This is the base image from which we are building.
FROM node:18-alpine

# Set the working directory in the Docker image filesystem.
# All the commands that follow in the Dockerfile will be run in this directory.
WORKDIR /src

# Copy the file or directories from the source (.) to the filesystem of the image at the path /src
# In this case, it's copying everything in the current directory into the /src directory in the image.
COPY . .

# Install the application dependencies.
# You will see a log of the installed dependencies.
RUN npm install

# If you are building your code for production
# Run npm ci instead of npm install. This will only install dependencies in package-lock.json.
RUN npm ci

# The alpine image doesn't come with bash pre-installed. We are installing it here because we might need to use it.
RUN apk add --no-cache bash

# Informs Docker that the container listens on the specified network ports at runtime.
# Here it is set to 3000
EXPOSE 3000

# At the end, set the Docker image to execute the application
# CMD sets default command and/or parameters, which can be overwritten from command line when docker container runs.
CMD ["node", "index.js"]