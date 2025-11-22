FROM node:14.16.0-alpine3.10

RUN mkdir -p /opt/app

WORKDIR /opt/app

COPY . .

RUN npm install

RUN npm i -g pm2

EXPOSE 3000
RUN chmod +x ./StartupScript.sh
#CMD [ "npm", "run", "pm2" ]
ENTRYPOINT [ "sh","./StartupScript.sh" ]
