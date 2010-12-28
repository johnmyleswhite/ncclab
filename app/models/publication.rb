class Publication < ActiveRecord::Base
  def year_string
    if self.year.nil?
      return "in press"
    else
      return self.year
    end
  end
end

