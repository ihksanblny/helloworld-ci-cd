# Gunakan image dasar node.js
FROM node:18-alpine 

# Set direktori kerja
WORKDIR /app

# Copy file package.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 5000

# Commant untuk menjalankan aplikasi
CMD ["npm", "start"]
