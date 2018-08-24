rm -rf vendor/assets/bower_components
yarn
bundle exec rake db:create:all
bundle exec rake db:migrate
bundle exec rake db:migrate VERSION=0
bundle exec rake db:migrate
bundle exec rake db:test:prepare
