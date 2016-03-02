class AdminController < ApplicationController

  layout 'admin_layout'

  def index
    @jumlah_prop    = Property.count
    @jumlah_banner  = Banner.count
    @jumlah_user    = User.count

  end
end
