class Pin < ActiveRecord::Base
	belongs_to :user
	mount_uploader :pins, PinsUploader
end
