# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

people_data = File.open('people.tsv') {|f| f.readlines()}
people_data.each do |row|
  fields = row.chomp.split(/\t/)
  Person.create({:name => fields[0],
                 :image => "/images/people/" + fields[1],
                 :position => fields[2],
                 :url => fields[3],
                 :blurb => fields[4]})
end

publications_data = File.open('publications.tsv') {|f| f.readlines()}
publications_data.each do |row|
  fields = row.chomp.split(/\t/)
  Publication.create({:authors => fields[0],
                      :year => fields[1],
                      :title => fields[2],
                      :journal => fields[3],
                      :file => "/files/1.pdf"})
end
