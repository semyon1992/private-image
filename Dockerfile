FROM node:12 as stage1
ENV NODE_VERSION 14.18.1
WORKDIR /home/npm/src
RUN git clone  https://github.com/johnpapa/node-hello.git
COPY . . 
#RUN npm install 



FROM node:12
WORKDIR /jsapp  
COPY --from=stage1 /home/npm/src/node-hello/index.js  .
COPY --from=stage1 /home/npm/src/node-hello/package.json  .
ENTRYPOINT [ "npm" ]
CMD [ "start" ]   
EXPOSE 8080 
