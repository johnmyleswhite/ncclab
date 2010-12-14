class InternshipsController < ApplicationController
  # GET /internships
  # GET /internships.xml  
  def index
    #@internships = Internship.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
