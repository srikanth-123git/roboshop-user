FROM            docker.io/node
RUN             mkdir /app
COPY            *.js package.json /app/
WORKDIR         /app
RUN             npm install
COPY            run.sh /app/run.sh
ENTRYPOINT      ["bash", "/app/run.sh" ]
ADD             https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem /app/rds-combined-ca-bundle.pem

