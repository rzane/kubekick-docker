FROM alpine:edge as builder
WORKDIR /opt/kubekick

ARG VERSION

RUN apk --no-cache add build-base crystal shards libsodium-dev yaml-dev
RUN wget -O- https://github.com/rzane/kubekick/archive/v${VERSION}.tar.gz | tar xvz --strip-components 1
RUN make

FROM alpine:3.7
COPY --from=builder /opt/kubekick/bin/kubekick /usr/local/bin/kubekick

ENTRYPOINT [/usr/local/bin/kubekick]

