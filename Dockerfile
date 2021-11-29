ARG NODE_VERSION=latest
FROM node:${NODE_VERSION} as stage1
WORKDIR /home/npm/src
RUN git clone  https://github.com/johnpapa/node-hello.git
COPY . . 



FROM node:${NODE_VERSION}
WORKDIR /jsapp  
COPY --from=stage1 /home/npm/src/node-hello/index.js  .
COPY --from=stage1 /home/npm/src/node-hello/package.json  .
ENTRYPOINT [ "npm" ]
CMD [ "start" ]   
EXPOSE 3000 
