FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build

RUN npm install -g http-server
CMD ["http-server", "dist/angular-devops/browser", "-p", "4200"]

