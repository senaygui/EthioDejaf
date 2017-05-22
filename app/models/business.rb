class Business < ApplicationRecord
	belongs_to :user
	mount_uploader :business_photo, BusinessPhotoUploader
end
