class HomeController < ApplicationController
  def index
    
  end

  def develop
  	
  end

  def listing
  	
  end

  def landing
  	@properties = Property.all
  end

end
