FROM node:8.15
RUN npm --version
COPY . /app
WORKDIR /app
RUN npm install --unsafe-perm
EXPOSE 3000/tcp 80/tcp
CMD [ "npm", "start" ]

