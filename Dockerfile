# Use the official OpenJDK 11 base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at the working directory
COPY C:\Users\Imane\Downloads\cours-springboot\cours-springboot.jar cours-springboot.jar

# Specify the command to run on container startup
CMD ["java", "-jar", "app.jar"]
# Use the official Node.js 14 Alpine base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the remaining application files to the working directory
COPY . .

# Specify the command to run on container startup
CMD ["yarn", "start"]

