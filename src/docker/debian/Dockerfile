FROM base--image--debian

ENV DOLT_ROOT_PATH="/home"

COPY --from=base--dolt / /

RUN true \
 #
 # Make /work accessable to all, allowing unprivileged usage.
 && chmod a+rwx /home \
 #
 # Adding some relevant tools
 && apt update \
 && DEBIAN_FRONTEND=noninteractive apt install -y curl make wget tzdata \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /work

EXPOSE 3006

ENTRYPOINT ["dolt"]