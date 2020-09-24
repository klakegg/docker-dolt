FROM debian:buster-slim

COPY --from=base--dolt / /

WORKDIR /work

ENTRYPOINT ["dolt"]