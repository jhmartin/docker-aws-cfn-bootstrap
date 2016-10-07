FROM alpine:latest

RUN apk add --update python \
  ca-certificates \
  py-setuptools && \
rm -rf /var/cache/apk/* && \
easy_install-2.7 https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz
