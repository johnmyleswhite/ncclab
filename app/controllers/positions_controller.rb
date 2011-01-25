class PositionsController < ApplicationController
  # GET /positions
  # GET /positions.xml  
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /positions/internships
  # GET /positions/internships.xml  
  def internships
    respond_to do |format|
      format.html # internships.html.erb
      format.xml  { render :xml => nil }
    end
  end
  
  # GET /positions/about
  # GET /positions/about.xml  
  def about
    respond_to do |format|
      format.html # about.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /positions/alumni
  # GET /positions/alumni.xml  
  def alumni
    respond_to do |format|
      format.html # alumni.html.erb
      format.xml  { render :xml => nil }
    end
  end
  
  # GET /positions/apply
  # GET /positions/apply.xml  
  def apply
    respond_to do |format|
      format.html # apply.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /positions/faq
  # GET /positions/faq.xml  
  def faq
    respond_to do |format|
      format.html # faq.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
