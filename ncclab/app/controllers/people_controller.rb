class PeopleController < ApplicationController
  # GET /people
  # GET /people.xml  
  def index
    @people = Person.find(:all,
                          :conditions => {:position => ['Director',
                                                        'Co-Director',
                                                        'Postdoctoral Fellow',
                                                        'Graduate Student',
                                                        'Research Assistant']})
    
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
  
  # GET /people/directors
  # GET /people/directors.xml  
  def directors
    @directors = Person.find(:all, :conditions => {:position => ['Director', 'Co-Director']})
    
    respond_to do |format|
      format.html # directors.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /people/postdocs
  # GET /people/postdocs.xml  
  def postdocs
    @postdocs = Person.find(:all, :conditions => {:position => 'Postdoctoral Fellow'})
    
    respond_to do |format|
      format.html # postdocs.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /people/students
  # GET /people/students.xml  
  def students
    @students = Person.find(:all, :conditions => {:position => 'Graduate Student'})
    
    respond_to do |format|
      format.html # students.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /people/ras
  # GET /people/ras.xml  
  def ras
    @ras = Person.find(:all, :conditions => {:position => 'Research Assistant'})
    
    respond_to do |format|
      format.html # ras.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /people/alumni
  # GET /people/alumni.xml  
  def alumni
    @alumni = Person.find(:all, :conditions => {:position => 'Alumnus'})
    
    respond_to do |format|
      format.html # alumni.html.erb
      format.xml  { render :xml => nil }
    end
  end
  
  # GET /people/collaborators
  # GET /people/collaborators.xml  
  def collaborators
    @collaborators = Person.find(:all, :conditions => {:position => 'Collaborator'})
    
    respond_to do |format|
      format.html # collaborators.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
