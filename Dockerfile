FROM node:12 as base
RUN mkdir /app
WORKDIR /app
RUN apt-get -y update; exit 0
RUN apt-get -y install git
RUN git clone https://github.com/MaheshRautrao/React-Todo-list.git
WORKDIR "/app/React-Todo-list"
RUN npm install
CMD ["npm","start"]