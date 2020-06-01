SHELL=/bin/bash

run: setup-db
	bundle exec rails s

setup-db:
	bundle exec rake db:create && bundle exec rake db:setup

run-test:
	bundle exec rake spec

run-rubocop:
	bundle exec rubocop	-D
