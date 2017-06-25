class UserProfile < ApplicationRecord
	belongs_to :user
	has_many :businesses
	has_many :vaccancies
	mount_uploader :avatar, AvatarUploader
end
