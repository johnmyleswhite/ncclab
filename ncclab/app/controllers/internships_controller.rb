class InternshipsController < ApplicationController
  # GET /internships
  # GET /internships.xml  
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /internships/about
  # GET /internships/about.xml  
  def about
    respond_to do |format|
      format.html # about.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /internships/alumni
  # GET /internships/alumni.xml  
  def alumni
    respond_to do |format|
      format.html # alumni.html.erb
      format.xml  { render :xml => nil }
    end
  end
  
  # GET /internships/apply
  # GET /internships/apply.xml  
  def apply
    respond_to do |format|
      format.html # apply.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /internships/faq
  # GET /internships/faq.xml  
  def faq
    respond_to do |format|
      format.html # faq.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
