class Group < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :events, dependent: :destroy
  has_many :group_users, dependent: :destroy
  has_many :users, through: :groups_users
  validates :name, presence: true
end
