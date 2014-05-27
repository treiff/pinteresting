class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
														:storage => :s3,
														:bucket => ENV['pinterestingappomr']
														:default_url => "https://s3.amazonaws.com/pinterestingappomr/SADFACE.jpg"
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
