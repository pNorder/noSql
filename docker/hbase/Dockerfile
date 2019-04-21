FROM openjdk:8u212-jdk-stretch

# Install and configure Ruby and Ruby Version Manager (RVM)
RUN mkdir ~/.gnupg
RUN echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf
RUN command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby

# Install JRuby (allows Java code to be run inside Ruby)
SHELL ["/bin/bash", "-l", "-c"]
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && rvm install jruby && rvm default jruby"

# Install and configure HBase
ADD http://archive.apache.org/dist/hbase/hbase-1.2.11/hbase-1.2.11-bin.tar.gz /app/
RUN tar xvzf /app/hbase-1.2.11-bin.tar.gz -C /app && rm /app/hbase-1.2.11-bin.tar.gz
ADD ./hbase-site.xml /app/hbase-1.2.11/conf/hbase-site.xml

# Add custom files and lecture examples
ADD ./start.sh /app/hbase/start.sh
ADD ./examples /app/hbase/examples
ADD ./.profile /root/.profile
ADD ./.bashrc /root/.bashrc

ENTRYPOINT /app/hbase/start.sh
