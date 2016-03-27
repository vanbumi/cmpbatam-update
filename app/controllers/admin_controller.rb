class AdminController < ApplicationController

  layout 'admin_layout'

  before_action :authenticate_user!

  def index
    @jumlah_prop    = Property.where("active = 'Yes'").count
    @jumlah_banner  = Banner.count
    @jumlah_user    = User.count

    @jumlah_contact = Contact.count

    @rumah_forsale      = Property.where("status = 'For Sale' AND property_type = 'Rumah' ").count
    @ruko_forsale       = Property.where("status = 'For Sale' AND property_type = 'Ruko' ").count
    @apartment_forsale  = Property.where("status = 'For Sale' AND property_type = 'Rumah' ").count
    @tanah_forsale      = Property.where("status = 'For Sale' AND property_type = 'Tanah' ").count
    @townh_forsale      = Property.where("status = 'For Sale' AND property_type = 'Town House' ").count

    @rumah_forrent      = Property.where("status = 'For Rent' AND property_type = 'Rumah' ").count
    @ruko_forrent       = Property.where("status = 'For Rent' AND property_type = 'Ruko' ").count
    @apartment_forrent  = Property.where("status = 'For Rent' AND property_type = 'Rumah' ").count
    @tanah_forrent      = Property.where("status = 'For Rent' AND property_type = 'Tanah' ").count
    @townh_forrent      = Property.where("status = 'For Rent' AND property_type = 'Town House' ").count



  end
end
