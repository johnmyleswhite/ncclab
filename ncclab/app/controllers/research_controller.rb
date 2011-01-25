class ResearchController < ApplicationController
  # GET /research
  # GET /research.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => nil }
    end
  end
  
  # GET /research/models
  # GET /research/models.xml
  def models
    respond_to do |format|
      format.html # models.html.erb
      format.xml  { render :xml => nil }
    end
  end

  # GET /research/methods
  # GET /research/methods.xml
  def methods
    respond_to do |format|
      format.html # methods.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
