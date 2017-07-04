class Business < ApplicationRecord
	belongs_to :user
	has_many :events
	has_many :vaccancies
	has_many :reviews
	def self.search(search)
  		where("business_name LIKE ?", "%#{search}%") 
	end
	mount_uploader :business_photo, BusinessPhotoUploader
end
