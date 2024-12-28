# ベースイメージとしてAlpine Linuxを使用
FROM alpine

# 作業ディレクトリを設定
WORKDIR /tmp

# 必要なツールをインストール
RUN apk add --update --no-cache curl

# sqldefをダウンロードしてインストール
RUN curl -LO https://github.com/k0kubun/sqldef/releases/download/v0.17.24/mysqldef_linux_amd64.tar.gz && \
    tar xvf mysqldef_linux_amd64.tar.gz && \
    mv /tmp/mysqldef /usr/bin/mysqldef

# dockerizeをダウンロードしてインストール
RUN curl -L https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-alpine-linux-amd64-v0.6.1.tar.gz -o dockerize-alpine-linux-amd64.tar.gz && \
    tar xvf dockerize-alpine-linux-amd64.tar.gz && \
    mv /tmp/dockerize /usr/bin/dockerize

# エントリーポイントスクリプトをコピー
COPY images/sqldef/entrypoint.sh /entrypoint.sh

# エントリーポイントスクリプトに実行権限を付与
RUN chmod +x /entrypoint.sh

# コンテナ起動時に実行するコマンドを設定
ENTRYPOINT ["/entrypoint.sh"]
