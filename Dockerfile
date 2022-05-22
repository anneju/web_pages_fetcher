FROM ruby:3.1.2-alpine
RUN apk add --update bash build-base libffi-dev libcurl && rm -rf /var/cache/apk/*
RUN gem install typhoeus nokogiri
USER root
WORKDIR /web_pages_fetcher
COPY . /web_pages_fetcher/
RUN cd /web_pages_fetcher && chmod +x fetch
CMD ["bash"]
