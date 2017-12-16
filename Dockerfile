FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl

RUN curl -sL -o oauth2_proxy.tar.gz \
    "https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz" \
  && tar xzvf oauth2_proxy.tar.gz \
  && mv oauth2_proxy-2.2.0.linux-amd64.go1.8.1/oauth2_proxy /bin/ \
  && chmod +x /bin/oauth2_proxy \
  && rm -r oauth2_proxy*

ENTRYPOINT ["oauth2_proxy"]
