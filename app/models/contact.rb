class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :nohp, :comment
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :nohp, numericality: { only_integer: true }


end
