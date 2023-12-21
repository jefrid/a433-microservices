# Menggunakan base image dari Node.js versi 18 dengan alpine linux
FROM node:14-alpine

# Menetapkan direktori kerja di dalam container sebagai /app
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# menginstal NPM
Run npm install

# Menyalin seluruh konten dari direktori host ke dalam container
COPY . .

# Mengekspos port 3000 agar dapat diakses dari luar container
EXPOSE 3000

# CMD digunakan untuk menentukan perintah default yang akan dijalankan ketika container dijalankan
CMD ["node", "index.js"]