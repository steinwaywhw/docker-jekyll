FROM ruby:latest
RUN \
  apt-get update && \
  apt-get install -y python-pygments && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
  
RUN gem install bundler therubyracer execjs kramdown jekyll

VOLUME ["/data"]
WORKDIR /data

RUN useradd jekyll --home /data

ADD start.bash /jekyll-start
CMD ["bash", "/jekyll-start"]

EXPOSE 4000
