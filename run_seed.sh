clear
rm db/development.sqlite3
rake db:create
rake db:migrate
rake db:seed