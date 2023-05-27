# imageを指定する
FROM ruby:2.7
# docker の実行場所を指定する
WORKDIR /var/www
#　ソースを実行場所にコピーする
# host guest
COPY ./src /var/www
# コマンド実行を指定する 下はライブラリ取得コマンド
RUN bundle config --local set path 'vendor/bundle' \
&&  bundle install

# コンテナ実行時に実行するコマンド
CMD ["bundle", "exec", "ruby", "app.rb"]
#CMD ["/bin/bash"]