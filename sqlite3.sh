# --- group-managerアプリ環境設定 ---
echo '---------------------------------------'
echo rails_practice
echo '---------------------------------------'
home_path="/home/vagrant"
git config --global url."https://".insteadOf git://
cd $home_path
$home_path/.rbenv/shims/bundle config git.allow_insecure true
# アプリに必要なaptパッケージの追加
# gcc4.9が必要
sudo -E add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo -E apt-get update
sudo -E apt-get install -y libstdc++-4.8-dev libdpkg-perl dpkg-dev build-essential libpq-dev gcc-4.9 g++-4.9
sudo -E update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 10
sudo -E update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20
sudo -E update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 10
sudo -E update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20
sudo -E update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 10
sudo -E update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20
sudo rm /usr/bin/cpp
sudo -E update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-4.8 10
sudo -E update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-4.9 20
sudo -E update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
sudo -E update-alternatives --set cc /usr/bin/gcc
sudo -E update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
sudo -E update-alternatives --set c++ /usr/bin/g++

# sqlite3のインストール
apt-get install sqlite3 sqlite-devel

cd $home_path
mkdir $home_path/rails
cd $home_path/rails
bundle init 
echo "gem 'rails', '4.2.1'" >> $home_path/rails/Gemfile
echo "gem 'therubyracer'" >> $home_path/rails/Gemfile
echo "gem 'seed-fu'" >> $home_path/rails/Gemfile

# アプリに必要なgem(rubyパッケージ)のインストール
$home_path/.rbenv/shims/bundle install --path vendor/bundle --jobs=4
$home_path/.rbenv/shims/bundle exec rails new rails_practice
