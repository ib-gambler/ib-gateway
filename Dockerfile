FROM alpine:3.13.1 AS build

WORKDIR /app
ADD https://media.githubusercontent.com/media/ib-gambler/ib-gateway/main/clientportal.gw.tar .
RUN tar -xf clientportal.gw.tar && rm clientportal.gw.tar

FROM store/oracle/serverjre:8

ENV TZ=Asia/Shanghai \
    LANG=C.UTF-8

WORKDIR /app

COPY --from=build /app/ /app/

CMD ["./bin/run.sh", "root/conf.yaml"]
