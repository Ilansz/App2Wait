class Group < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :events, dependant: :destroy
  has_many :group_users, dependant: :destroy
  has_many :users, through: :group_users
  validates :name, presence: true
end
