# Docker Stacks 
Personalised docker images.
#### Neo4j
  - DockerFile with [graph-algorithm](https://neo4j.com/docs/graph-algorithms/current/) and [apoc](https://neo4j.com/blog/intro-user-defined-procedures-apoc/) plugins.

### Installation  
By default it creates the data on $HOME/data folder.
```sh
$ docker run \
   --publish=7474:7474 --publish=7687:7687 \
   --volume=$HOME/neo4j/data:/data \
   --volume=$HOME/neo4j/logs:/logs \
   swap2993/neo4j-plugins
```