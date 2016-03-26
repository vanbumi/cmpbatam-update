class SingleController < ApplicationController

  def index

  	slug = params[:slug]
  	@properties = Property.where("slug = ?", slug).limit(1)

    @contact = Contact.new

  end
end
