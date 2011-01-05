# rails console
people = Person.find(:all)

people_fields = ['name', 'title', 'office', 'email', 'phone', 'blurb', 'image', 'url', 'position']

f = File.new('people_dump.tsv', 'w')

f.puts people_fields.join("\t")

people.each do |person|
  f.puts people_fields.map {|field| person[field]}.join("\t")
end

f.close

publications = Publication.find(:all)

publications_fields = ['authors', 'year', 'title', 'journal', 'file']

f = File.new('publications_dump.tsv', 'w')

f.puts publications_fields.join("\t")

publications.each do |publication|
  f.puts publications_fields.map {|field| publication[field]}.join("\t")
end

f.close
