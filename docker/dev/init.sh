#!/bin/bash
mkdir -p ./mysql/data
mkdir -p ./mysql/conf
mkdir -p ./rabbitmq/data
mkdir -p ./redis/data
curl https://gitee.com/mirrors_mna/redis/raw/unstable/redis.conf > ./redis/redis.conf
echo "文件已创建"
