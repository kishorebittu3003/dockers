FROM node:16
ARG branch=main
RUN git clone https://github.com/Azure-Samples/js-e2e-express-server.git && \
    cd js-e2e-express-server && \
    git checkout ${branch} && \
    npm install && \
    npm run build && \
    npm run test && \
    npm start
ENTRYPOINT [ "npm", "start", "--host", "0.0.0.0" ] 
EXPOSE 3000