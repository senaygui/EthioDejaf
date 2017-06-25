class Business < ApplicationRecord
	belongs_to :user
	has_many :vaccancies
	has_many :reviews
	
	mount_uploader :business_photo, BusinessPhotoUploader
end
