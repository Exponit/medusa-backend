
FROM node:alpine

WORKDIR /app

COPY package.json ./

RUN npm install @medusajs/medusa-cli -g

RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 9000

CMD ["npm", "start"]`