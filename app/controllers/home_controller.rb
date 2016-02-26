class HomeController < ApplicationController
  def index
    
  end

  def develop
  	
  end

  def listing
  	
  end

  def landing
  	@properties = Property.order("created_at DESC")
  end

end
