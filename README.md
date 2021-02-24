# ib-gateway

> https://interactivebrokers.github.io/cpwebapi/

## 使用

```
docker pull ibgambler/ib-gateway:{tag}
docker run -d --name=ib-gateway --restart=always -m {logs}:/app/logs -p {port}:5000 ibgambler/ib-gateway:{tag}
```
