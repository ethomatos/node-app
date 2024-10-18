# Use the latest LTS version of Node.js as the base image
FROM node:20.13.1-bookworm-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the container
COPY . .

# Install dependencies
RUN npm install -g npm@10.8.1

# Expose the port the app will run on
EXPOSE 3000

CMD ["node", "app.js"]
