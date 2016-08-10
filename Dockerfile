FROM ubuntu:16.04

ENV TERRAFORM_VERSION=0.7.0

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
        git \
        jq \
        unzip \
        curl && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sL -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d /usr/bin && \
    rm -rf /tmp/*
