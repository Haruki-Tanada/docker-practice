#!/bin/bash

# イメージをビルド
docker build -t my-node-app .

# 古いコンテナが残っていたら削除
docker rm -f my-node-app-container 2>/dev/null

# 新しいコンテナをバックグラウンドで起動
docker run -d --name my-node-app-container -p 3000:3000 my-node-app

