# Node.jsの公式イメージをベースにする
FROM node:18

# コンテナ内の作業ディレクトリ
WORKDIR /usr/src/app

# package.json と package-lock.json をコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリのソースコードをコピー
COPY . .

# コンテナで使うポートを指定
EXPOSE 3000

# サーバーを起動するコマンド
CMD ["node", "server.js"]

