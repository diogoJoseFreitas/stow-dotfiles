# Dockerfile for PM2 runtime
FROM node:alpine

# Install PM2 globally
RUN npm install -g pm2

# Create app directory
WORKDIR /app

# Default command to keep the container alive
CMD ["pm2-runtime", "ecosystem.config.js"]

