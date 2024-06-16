FROM ghcr.io/graalvm/jdk-community:22

EXPOSE 25565

VOLUME /minecraft
WORKDIR /minecraft

STOPSIGNAL SIGTERM

COPY --chmod=755 scripts/* /

RUN ls /minecraft
ENTRYPOINT [ "/start" ]