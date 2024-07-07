FROM node:18.17.0

#コンテナ内での作業ディレクトリを設定
WORKDIR /usr/src/app/

# Bunをインストールする
RUN curl -fsSL https://bun.sh/install | bash

# bunのパスを環境変数に追加する
ENV PATH="/root/.bun/bin:$PATH"