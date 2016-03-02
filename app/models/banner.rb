class Banner < ActiveRecord::Base

  validates :images, presence: true
  has_attachments :images, maximum: 5, accept: [:jpg, :png, :gif]

end
