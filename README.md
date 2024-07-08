# Next.js 開発環境構築

## ファイルの準備をする
下記の二つのファイルをプロジェクトディレクトリに配置する
- Dockerfile
- docker-compose.yml

## プロジェクトディレクトリをVSCodeで開き、ターミナルを開く
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

コンテナ内でshadcnuiをインストール
'''
docker exec -it next_project-front-1 bash
bunx shadcn-ui@latest
'''

オプション選択
'''
✔ Which style would you like to use? › Default
✔ Which color would you like to use as base color? › Zinc
✔ Would you like to use CSS variables for colors? … no / yes
'''