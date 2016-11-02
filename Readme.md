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

$ cd rails_practice
```

### vagrantで仮想マシンの作成

vagrantを使い, virtualbox上に仮想マシンを作成する.  
使用するOSは``Ubuntu 14.04``  

```
$ ls
... Vagrantfile ...

$ vagrant up
# 30分くらい待つ
```

あとは, 待っていれば仮想マシンが作成される.  
仮想マシンで扱うOSは大体システムのOSと異なることから  
仮想マシンのことをゲストマシン, ゲストOSと呼ぶ.  

システムのOSをホストマシン, ホストOSと呼ぶ.  

### ゲストOSに接続
```
# on terminal
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


