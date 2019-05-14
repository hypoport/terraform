FROM hashicorp/terraform:light

RUN apk --no-cache add jq zip openssl

WORKDIR /app
