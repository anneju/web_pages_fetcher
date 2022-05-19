FROM ruby:3.1.2-alpine
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN gem install httparty nokogiri
USER root
WORKDIR /web_pages_fetcher
COPY . /web_pages_fetcher/
RUN cd /web_pages_fetcher && chmod +x fetcher
CMD ["bash"]
