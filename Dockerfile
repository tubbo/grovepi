#
# Container build script for gem testing
#

# Use the raspbian starter image
FROM resin/rpi-raspbian:jessie
ENV QEMU_EXECVE 1

# Install Ruby, RubyGems, and Bundler
RUN sudo apt-get install rubygems
RUN gem install bundler

# Copy the gem's codebase to /tmp
RUN mkdir -p /tmp/piquarium
COPY . /tmp/piquarium

# Install the gem from /tmp
WORKDIR /tmp/piquarium
RUN bundle install
RUN bin/rake && bin/rake install
