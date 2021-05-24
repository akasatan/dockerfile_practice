# ベースイメージを決定する
FROM ruby:2.7

# Dockerの作業ディレクトリを指定する
WORKDIR /var/www

# srcファイルの中身を/var/wwwにコピーする
COPY ./src /var/www
# Dockerの起動時にbashを起動する
CMD ["/bin/bash"]