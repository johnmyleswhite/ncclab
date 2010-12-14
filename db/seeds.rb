# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

people_data = File.open('people.csv') {|f| f.readlines()}
people_data.each do |row|
  fields = row.split(/,/)
  Person.create({:name => fields[0]})
end

publications_data = File.open('publications.csv') {|f| f.readlines()}
publications_data.each do |row|
  fields = row.split(/,/)
  Publication.create({:title => fields[0]})
end
