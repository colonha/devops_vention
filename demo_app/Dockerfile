# Use the official Node.js 16 as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

COPY package*.json ./


# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of the application code
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NODE_ENV=development

# Run npm start when the container launches
CMD ["npm", "start"]
