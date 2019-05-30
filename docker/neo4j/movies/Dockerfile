FROM neo4j:latest

# Install required dependencies
RUN apk update && apk add \
    vim \
    emacs \
    curl

# Copy custom config file
COPY neo4j.conf /var/lib/neo4j/conf/neo4j.conf
COPY movies.db /data/databases/movies.db

