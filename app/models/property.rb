class Property < ActiveRecord::Base

	validates		 	:images, presence: true
	has_attachments 	:images, accept: [:jpg, :png, :gif]
	# has_attachments 	:images, maximum: 5, accept: [:jpg, :png, :gif]

end
