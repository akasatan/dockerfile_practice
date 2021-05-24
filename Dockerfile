# ベースイメージを決定する
FROM ruby:2.7

# Dockerの作業ディレクトリを指定する
WORKDIR /var/www

# srcファイルの中身を/var/wwwにコピーする
COPY ./src /var/www

#手動で行ったものを行ってもらう
RUN bundle config --local set path 'vendor/bundle' \
  && bundle install

# RUN bundle config --local set path 'vandor/bundle'
# RUN bundle install  と2行で書いても良い

# 実行させるものを記述。これらを記述するとwebサーバーが立ち上がる
CMD ["bundle", "exec", "ruby", "app.rb"]