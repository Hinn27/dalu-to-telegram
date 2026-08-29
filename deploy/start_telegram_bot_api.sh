#!/system/bin/sh
mkdir -p /data/local/telegram-bot-api
nohup /data/data/com.termux/files/usr/bin/telegram-bot-api --local --api-id=6 --api-hash=eb06d4abfb49dc3eeb1aeb98ae0f581e --dir=/data/local/telegram-bot-api --http-port=8081 > /data/local/telegram-bot-api.log 2>&1 &
