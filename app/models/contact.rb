class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :nohp, :comment
  validates_format_of :email :with => /^(+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

end
