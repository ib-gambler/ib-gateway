FROM store/oracle/serverjre:8

ENV TZ=Asia/Shanghai \
    LANG=C.UTF-8

WORKDIR /app
ADD clientportal.gw.tar .

ENTRYPOINT ./bin/run.sh root/conf.yaml
