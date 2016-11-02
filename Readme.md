### リポジトリのクローン

vagrantの設定ファイルがあるリポジトリから  
ファイルをgit clone

``git clone``がうまくいかない場合はgitのプロキシを設定する  
学内であれば, 学内のプロキシを設定  
```
git config --global https.proxy http://proxy.yourproxy.com:8080
```

その後, 以下のコマンドを打つ
```
$ cd ~
$ mkdir nutfes
$ cd nutfes
$ git clone https://github.com/ShuzoN/rails_practice.git
$ ls 
... rails_practice

cd rails_practice
```

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


