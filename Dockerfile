FROM node:12.14.1

LABEL maintainer Andres DJC & Miguel GK

RUN echo "Running node version: " `node -v`
RUN echo "Running npm version: " `npm -v`

#Code base
COPY ./ /src

# Define working directory
WORKDIR /src

RUN npm ci --production

CMD ["npm", "start"]