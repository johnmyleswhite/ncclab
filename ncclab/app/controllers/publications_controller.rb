class PublicationsController < ApplicationController
  # GET /publications
  # GET /publications.xml
  def index
    @years = Publication.find(:all).map {|p| p.year}.uniq
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
