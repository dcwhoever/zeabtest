FROM node:20.10

WORKDIR /app

#COPY . .
COPY index.js package.json ./

USER root

EXPOSE 7860

RUN apt-get update -y && \
    apt-get install -y curl && \
    chmod 777 /app/index.js && \
    chmod -R 777 /app && \
    npm install
 

CMD ["node", "index.js"]
#CMD nice -n 19 node index.js

