class Event < ApplicationRecord
	belongs_to :user
	belongs_to :business
	mount_uploader :event_photo, EventPhotoUploader
end
