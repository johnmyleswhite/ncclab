class PeopleController < ApplicationController
  # GET /people
  # GET /people.xml  
  def index
    @people = Person.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
