class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :nohp, :comment
  # validates_format_of :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  # validates_numericality_of   :value
  #                             :only_integer =>
  validates :nohp, numericality: { only_integer: true }


end
