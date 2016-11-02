# --- Ruby環境の導入 ---
echo '---------------------------------------'
echo 'ruby env setup'
echo '---------------------------------------'
# rubyバージョン管理ソフト rbenvの導入
home_path="/home/vagrant"
cd ${home_path}/.rbenv
mkdir shims versions plugins
git clone https://github.com/rbenv/rbenv.git ${home_path}/.rbenv
git pull origin master
git clone https://github.com/sstephenson/ruby-build.git ${home_path}/.rbenv/plugins/ruby-build
cd ${home_path}/.rbenv/plugins/ruby-build/
git pull origin master
cd ${home_path}
echo 'export PATH=$HOME/.rbenv/bin:$PATH' >> ${home_path}/.bashrc
echo 'eval "$(rbenv init -)"' >> ${home_path}/.bashrc
source ${home_path}/.bashrc
echo $PATH
${home_path}/.rbenv/bin/rbenv rehash
# rbenvを利用してruby2.2.0をインストール
sudo -E apt-get install -y libssl-dev libffi-dev libreadline-dev postgresql
${home_path}/.rbenv/bin/rbenv install -v 2.2.0
${home_path}/.rbenv/bin/rbenv global 2.2.0
${home_path}/.rbenv/bin/rbenv exec gem install bundler
