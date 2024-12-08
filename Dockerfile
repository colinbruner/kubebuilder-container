FROM golang:1.23-alpine

# Install curl
RUN apk add --no-cache curl

# Setup
RUN adduser -h /home/kubebuilder -D -s /bin/sh -u 1001 kubebuilder kubebuilder
ARG VERSION=${VERSION:-v4.3.1}
ARG PLATFORM=linux
ARG TARGETOS=${TARGETOS:-arm64}
ARG URL="https://github.com/kubernetes-sigs/kubebuilder/releases/download/${VERSION}/kubebuilder_${PLATFORM}_${TARGETOS}"

# Download Kubebuilder
RUN curl -o /usr/local/bin/kubebuilder -L $URL && \
      chmod +x /usr/local/bin/kubebuilder

# User
USER kubebuilder
WORKDIR /home/kubebuilder

ENTRYPOINT ["/usr/local/bin/kubebuilder"]

