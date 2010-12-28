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
  
  # GET /people/1
  # GET /people/1.xml  
  def show
    @person = Person.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
