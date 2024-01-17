FROM node:16-alpine // Base image

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

# Install application dependencies
RUN npm install

# Build the application
RUN npm run build

# Expose a port
EXPOSE 3000

# Set the command to run when the container starts
CMD ["npm", "start"]
