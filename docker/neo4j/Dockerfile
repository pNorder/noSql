FROM neo4j:latest

# Install required dependencies
RUN apk update && apk add \
    vim \
    emacs \
    curl

# Add examples and lectures
ADD ./examples /app/neo4j/examples
