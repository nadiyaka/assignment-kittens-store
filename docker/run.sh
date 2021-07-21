# set up test db and run specs
docker-compose --env-file ../.env.test run app rake db:migrate
docker-compose --env-file ../.env.test run app bundle exec rspec

# set up dev db
docker-compose --env-file ../.env.dev run app rake db:migrate db:seed

# start container
docker compose --env-file ../.env.dev up
