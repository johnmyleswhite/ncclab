class Person < ActiveRecord::Base
	def last_name()
		names = self.name.split(/\s/)
		return names[1]
	end
	def category()
		if self.position == 'Director'
			return 'directors'
		end
		
		if self.position == 'Co-Director'
			return 'directors'
		end
		
		if self.position == 'Postdoctoral Fellow'
			return 'postdocs'
		end
		
		if self.position == 'Graduate Students'
			return 'students'
		end
	
		if self.position == 'Research Associates'
			return 'ras'
		end
		
		return 'students'
	end
end
