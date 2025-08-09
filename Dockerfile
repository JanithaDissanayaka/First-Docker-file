#Base Image
 FROM node:22-alpine

#working directory
WORKDIR /app

#copy packge.jspn and dependencies
COPY package.json .
RUN npm install

#Copy Files
COPY . .

ENV HOST=0.0.0.0
EXPOSE 3000

#Command
CMD [ "npm","start" ]

