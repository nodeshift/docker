FROM registry.access.redhat.com/ubi8/nodejs-14:latest

# Change working directory
WORKDIR "/app"

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm production packages 
RUN npm install --production

COPY . /app

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

CMD ["npm", "start"]
