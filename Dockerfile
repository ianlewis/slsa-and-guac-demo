# slsa-and-guac-demo

FROM debian AS builder

COPY ./slsa-and-guac-demo /
RUN chmod u+x slsa-and-guac-demo

FROM scratch

COPY --from=builder /slsa-and-guac-demo /slsa-and-guac-demo

CMD ["/slsa-and-guac-demo"]
