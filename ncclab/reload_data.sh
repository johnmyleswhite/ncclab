rm db/development.sqlite3 
rm db/schema.rb 
rake db:migrate
rake db:seed
