FROM couchdb:latest

# Install and configure Ruby and Ruby Version Manager (RVM)
RUN mkdir ~/.gnupg
RUN echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf
RUN command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN sed -i -e 's/mesg n .*true/tty -s \&\& mesg n/g' /root/.profile

# Install libxml-ruby couchrest (allows access to CouchDB and the ability to parse XML files)
SHELL ["/bin/bash", "-l", "-c"]
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh"
RUN apt-get install -yq libxslt-dev libxml2-dev
RUN gem install --no-document libxml-ruby
RUN gem install couchrest

# Install Node.js
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
RUN nvm install node

# Add examples and lectures
ADD ./examples /app/couchdb/examples
ADD ./lectures /app/couchdb/lectures

# Copy custom config file
COPY local.ini /opt/couchdb/etc/
