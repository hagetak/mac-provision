curl -L get.rvm.io | bash -s stable

source ~/.zshrc

rvm get head
rvm get latest

rvm install 2.5.1

rvm alias create default 2.5.1

echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc

gem install nokogiri rubocop