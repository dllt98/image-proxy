# Build Environment: Node + Playwright
FROM node:20
FROM mcr.microsoft.com/playwright:v1.39.0-jammy

# Env
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

# Export port 3000 for Node
EXPOSE 3000

# Copy all app files into Docker Work directory
COPY package*.json /app/
COPY src/ /app/src/

# Install Deps
RUN npm install

# Run Node index.js file
CMD [ "npm", "run", "prod" ]