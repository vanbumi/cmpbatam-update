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

    @q = Property.ransack(params[:q])
    @properties = @q.result.where("active = ?", "Yes").order("created_at DESC").page(params[:page]).per_page(15)
  	# @properties = Property.where("active = 'Yes'").order("created_at DESC").page(params[:page]).per_page(6)

    @properties_slide = Property.where("banner = '1'")

    @banners          = Banner.all

    # @contacts = Contact.all
    @contact          = Contact.new


  end

end
