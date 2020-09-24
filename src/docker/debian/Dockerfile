FROM base--image--debian

ENV DOLT_ROOT_PATH="/home"

COPY --from=base--dolt / /

RUN chmod a+rwx /home

WORKDIR /work

EXPOSE 3006

ENTRYPOINT ["dolt"]