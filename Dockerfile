FROM node:10.10.0

MAINTAINER tianling.lk

ENV HOME=/home/refactoring

WORKDIR $HOME

RUN npm install --save 
RUN npm install -g nodemon
ADD . ./

RUN npm run-script build

#Expose the port
EXPOSE 3030

CMD ["node", "app.js"]