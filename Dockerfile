FROM neo4j:3.4.1
MAINTAINER MRAJAB <moh.rajab@dce.sa>

ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.4.0.1/apoc-3.4.0.1-all.jar


RUN mv plugins /plugins && ln -s /plugins

RUN curl --fail --silent --show-error --location --output apoc-3.4.0.1-all.jar $APOC_URI \
    && mv apoc-3.4.0.1-all.jar /plugins

EXPOSE 7474 7473 7687

CMD ["neo4j"]
