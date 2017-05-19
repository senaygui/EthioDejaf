class UserProfile < ApplicationRecord
	belongs_to :user
	has_many :businesses
	mount_uploader :avatar, AvatarUploader
end
