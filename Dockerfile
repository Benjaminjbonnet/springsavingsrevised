FROM node:17.5.0-alpine
WORKDIR /core
ENV PATH="./node_modules/.bin:$PATH"
COPY . . 

RUN npm run scripts build 
CMD ["npm", "start"]
