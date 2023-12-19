#mengambil node 14
FROM node:14-alpine

#membuat workdir app
WORKDIR /app

#copy file ke app
COPY . /app

#membuat environment
ENV NODE_ENV=production DB_HOST=item-db

#install dependencies
RUN npm install --production --unsafe-perm && npm run build

#publish port 8080
EXPOSE 8080

#menjalankan npm start
CMD ["npm", "start"]