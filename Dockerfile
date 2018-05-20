# builder image
# FROM golang AS builder
#
# RUN go get github.com/Masterminds/glide
# WORKDIR /go/src/github.com/citrus-international/kube-ingress-aws-controller
# COPY . .
# RUN glide install --strip-vendor
# RUN make test
# RUN make build.linux
#
# COPY --from=builder /go/src/github.com/citrus-international/kube-ingress-aws-controller/build/linux/kube-ingress-aws-controller \
#   /bin/kube-ingress-aws-controller

FROM alpine

COPY /build/linux/kube-ingress-aws-controller /bin/kube-ingress-aws-controller

ENTRYPOINT ["/bin/kube-ingress-aws-controller"]
