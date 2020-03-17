FROM hashicorp/terraform:0.12.20

RUN apk --no-cache add jq zip openssl ansible

WORKDIR /app

COPY ./docker_entrypoint.sh /

ENTRYPOINT ["/docker_entrypoint.sh"]
