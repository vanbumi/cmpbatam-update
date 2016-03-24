class HomeController < ApplicationController
  def index
    
  end

  def develop
  	
  end

  def listing
  	
  end

  def dokumentasi

  end

  def lat_react
    
  end

  def landing
  	@properties = Property.order("created_at DESC").page(params[:page]).per_page(9)
    # @properties = Property.search(params[:search]).order("created_at DESC").page(params[:page]).per_page(5)
    @properties_slide = Property.where("banner = '1'")

    @banners    = Banner.all

    # @contacts = Contact.all
    @contact = Contact.new


  end

end
