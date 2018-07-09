# Insipred by https://github.com/CliffordAnderson/docker-containers/blob/master/neo4j/Dockerfile
# Includes JDBC plugins
# https://neo4j.com/developer/kb/how-do-i-use-cypher-to-connect-to-a-rbms-using-jdbc/

FROM neo4j:3.4
MAINTAINER Mohammed Rajab <moh.rajab@dce.sa>

ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.4.0.1/apoc-3.4.0.1-all.jar


RUN mv plugins /plugins && ln -s /plugins

RUN wget $APOC_URI && mv apoc-3.4.0.1-all.jar plugins/apoc-3.4.0.1-all.jar
    
EXPOSE 7474 7473 7687

CMD ["neo4j"]
