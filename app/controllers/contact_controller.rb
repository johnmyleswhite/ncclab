class ContactController < ApplicationController
  # GET /contact
  # GET /contact.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => nil }
    end
  end
end
