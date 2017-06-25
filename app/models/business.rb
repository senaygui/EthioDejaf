class Business < ApplicationRecord
	belongs_to :user
	has_many :vaccancies
	mount_uploader :business_photo, BusinessPhotoUploader
end
