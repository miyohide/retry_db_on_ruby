# これは何か

Railsじゃないけれども単体でActiveRecordを使ってみるサンプルです。
Docker環境で動かそうとしています。

# 動かし方

以下のコマンドを実行します。

```shell
$ docker-compose run --rm app bash
$ bundle install  # 最初の1回だけ
$ ruby scripts/aggregate_todo_count_by_date.rb
```

# 課題

- [ ] 環境がdevelopment固定
- [x] ユーザー名やパスワードが`database.yml`にそのまま入力しているのを環境変数にしたい
- [x] Docker Composeを一度Downするとまたbundle installやり直し？

# 参考

以下のものを参考に。

- [ActiveRecordをRailsじゃない環境で使う（2019年版）](https://qiita.com/YusukeIwaki/items/b009ea3465fd8a1868d6)
  - RDBMSをMySQLからPostgreSQLに変えただけ
