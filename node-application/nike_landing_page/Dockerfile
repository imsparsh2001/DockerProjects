FROM node:18-alpine
WORKDIR /app
COPY package*.json ./

# Remove the 'prepare' script from package.json to prevent 'npm run build' during install
RUN sed -i '/"prepare":/d' package.json
RUN npm install

# Copy the rest of the application files
COPY . .  
RUN ls -l /app  
RUN npm run build

EXPOSE 5173
CMD ["npm", "run", "preview", "--", "--host"]
