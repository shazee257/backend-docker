FROM node:alpine
ENV DOMAIN_URL='NA'
ENV API_URL='http://localhost:3001'
COPY . /app
WORKDIR /app
RUN yarn install && yarn build
EXPOSE 8080
CMD ["yarn", "start"]
