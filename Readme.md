### ゲストOSに接続
```
$ vagrant ssh
```

#### サーバ起動(ゲストOS)
```
$ cd ~/rails/rails_practice
# hostから接続するためにbindが必須
$ bundle exec rails server --bind=0.0.0.0
```

#### ホストOSのブラウザからアクセス

※ ホストOSのシステムプロキシをoff

1. ブラウザを開く
2. ``http://192.168.56.3:3000/``にアクセス
3. "Welcome aboard"が開けば成功


