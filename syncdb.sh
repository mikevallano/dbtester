heroku pg:backups capture --app still-anchorage-6672
curl -o latest.dump `heroku pg:backups public-url --app still-anchorage-6672`
pg_restore --verbose --clean --no-acl --no-owner -h localhost -d dbswitcher_development latest.dump