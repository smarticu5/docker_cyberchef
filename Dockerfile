FROM node:latest

RUN apt-get update && \
  apt-get install -y git && \
  rm -rf /var/lib/apt/lists/* && \
  npm install -g grunt-cli && \ 
  git clone https://github.com/gchq/CyberChef && \
  cd CyberChef && \
  npm install

EXPOSE 8080

ENTRYPOINT ["grunt"]
CMD ["dev"]
