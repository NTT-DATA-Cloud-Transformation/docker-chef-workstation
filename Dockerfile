FROM ubuntu
# VOLUME .:/host
RUN apt-get update
RUN echo a | grep a
RUN apt-get  install -y --force-yes git curl wget
RUN curl -sSL https://get.rvm.io | bash
RUN curl -L https://www.opscode.com/chef/install.sh | bash
RUN curl -sSL https://get.rvm.io | bash
RUN bash -c "source /etc/profile.d/rvm.sh && rvm install ruby-1.9.3-p484 && rvm use ruby-1.9.3-p484 && echo 'source /etc/profile.d/rvm.sh' >> ~/.profile;"
RUN bash -c "source /etc/profile.d/rvm.sh && gem install knife-ec2;"
