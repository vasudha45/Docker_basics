# Use a stable Node.js version (try node:20-alpine if node:21-alpine has issues)
FROM node:20-alpine

# Set working directory within the container (Unix-style path)
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
