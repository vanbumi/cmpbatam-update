class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :site_search

  	def site_search
   		@q = Property.ransack(params[:q])
    	@search_properties = @q.result.order("created_at DESC").page(params[:page]).per_page(5)
   	end 

end
