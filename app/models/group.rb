class Group < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :events
  has_many :group_users
  validates :name, presence: true
end
