# Next.js 開発環境構築

Dockerfileからイメージをビルドする。下記のコマンドを実行
```
docker-compose build
```

コンテナにシェルコマンド実行環境で入る。下記のコマンドを実行  front はdocker-compose.ymlに記述したservie名
```
docker-compose run --rm front sh
```

作業ディレクトリにNext.jsプロジェクトを立ち上げる(./next_app : /usr/src/app)
```
bunx -y create-next-app . --ts --tailwind --eslint --no-src-dir --app --import-alias '@/*' 
```

コンテナから抜ける。下記のコマンドを実行
```
exit
```

dockerコンテナを立ち上げる（サーバが立ちあげる）下記のコマンドを実行
docker-compose.ymlでしていしたポートでアクセス可能（http://localhost:3001）
```
docker-compose up
```

コンテナを停止する。
```
docker-compose down
```

コンテナをバックで立ち上げる。
```
docker-compose up -d
```

