FROM ruby:latest

RUN apt-get update && apt-get install -y locales && \
locale-gen C.UTF-8 && /usr/sbin/update-locale LANG=C.UTF-8 && \
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

WORKDIR /root/project

ADD ./ ./

RUN gem install bundler && \
mkdir -p .bundle-cache && \
bundle install --path=.bundle.cache && \
rm -rf _site/*
# --verbose 2>/dev/null
