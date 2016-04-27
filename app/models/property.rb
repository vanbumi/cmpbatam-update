class Property < ActiveRecord::Base

	validates		 				:name, :slug, :location, :status, :property_type, :price, :images, presence: true
	has_attachments 		:images, maximum: 1, accept: [:jpg, :png, :gif]
	# has_attachments 	:images, maximum: 5, accept: [:jpg, :png, :gif]

end

