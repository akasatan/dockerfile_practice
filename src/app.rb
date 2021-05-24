require 'sinatra'

# 初期設定：IPアドレスを0.0.0.0にbindしておく
# bind→紐づけること。ローカルからの通信をDockerコンテナで全て受け取れるようにするもの
configure do
  set :bind, '0.0.0.0'
end

get '/' do
  'Hello world!'
end