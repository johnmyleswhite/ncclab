# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

people_data = File.open('people_dump.tsv') {|f| f.readlines()}
people_data.shift
people_data.each do |row|
  fields = row.chomp.split(/\t/)
  Person.create({:name => fields[0],
                 :title => fields[1],
                 :office => fields[2],
                 :email => fields[3],
                 :phone => fields[4],
                 :blurb => fields[5],
                 :image => fields[6],
                 :url => fields[7],
                 :position => fields[8]})
end

publications_data = File.open('publications_dump.tsv') {|f| f.readlines()}
publications_data.shift
publications_data.each do |row|
  fields = row.chomp.split(/\t/)
  Publication.create({:authors => fields[0],
                      :year => fields[1],
                      :title => fields[2],
                      :journal => fields[3],
                      :file => fields[4]})
end
