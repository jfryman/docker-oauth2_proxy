FROM golang

RUN go get github.com/bitly/oauth2_proxy


ENTRYPOINT ["oauth2_proxy"]
