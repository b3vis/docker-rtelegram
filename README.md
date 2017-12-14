# rtelegram

Containerised version of [rtelegram](https://github.com/pyed/rtelegram)

rtelegram is a Telegram bot for interacting with a rTorrent instance.

Set the variables RT_TOKEN, RT_MASTERS and RT_URL with your relevant details

---
#### 0.0.2

- 2017-08-01 :: Initial release
- 2017-12-14 :: Dramatically reduced image size

---
#### Example Run Command

```
docker run -d -e RT_TOKEN="TELEGRAMBOTTOKEN" -e RT_MASTERS="USERNAME" -e RT_URL="10.0.0.1:5000" b3vis/rtelegram
```

#### Docker Compose Example
```
version: "2"
services:
  rtorrent_exporter:
    image: b3vis/rtelegram
    restart: always
    container_name: rtelegram
    environment:
      - RT_TOKEN="TELEGRAMBOTTOKEN"
      - RT_MASTERS="USERNAME"
      - RT_URL="10.0.0.1:5000"

```
---
