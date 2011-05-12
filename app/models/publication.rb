class Publication < ActiveRecord::Base
  def year_string
    if self.year.nil?
      return "in press"
    else
      return self.year
    end
  end
  
  def year_sortable
   if self.year.nil?
    return 3000
   else 
    return self.year
   end
  end
  
  def self.sorted_by_years_and_names
  	sorted = Publication.find(:all).sort do |a, b|
  		if a.year_sortable > b.year_sortable
  			-1
  		elsif a.year_sortable < b.year_sortable
  			1
  		else
  			a.authors <=> b.authors
  		end
  	end
  end
end
