FROM neo4j:3.5.3

RUN apk update \                                                                                                                                                                                                                        
  &&   apk add ca-certificates wget \                                                                                                                                                                                                      
  &&   update-ca-certificates

RUN wget https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/3.5.3.1/graph-algorithms-algo-3.5.3.1.jar -P /var/lib/neo4j/plugins/

RUN wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.2/apoc-3.5.0.2-all.jar -P /var/lib/neo4j/plugins/

RUN mkdir -p /conf

RUN echo "dbms.security.procedures.unrestricted=apoc.*,algo.*" >> /conf/neo4j.conf

EXPOSE 7474 7473 7687

