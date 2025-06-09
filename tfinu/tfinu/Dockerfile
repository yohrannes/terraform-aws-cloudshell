FROM hashicorp/terraform:latest

RUN apk add --no-cache jq curl zip

WORKDIR /app

ENV AWS_REGION=us-east-1
ENV AWS_DEFAULT_REGION=us-east-1
ENV AWS_PROFILE=default

COPY tfinu/.shrc /root/.shrc

ENTRYPOINT []
CMD ["sh", "-c", "source /root/.shrc && terraform init -reconfigure -input=false && exec env ENV=/root/.shrc sh"]
