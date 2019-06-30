class Event < ApplicationRecord
  belongs_to :group
  mount_uploader :photo, PhotoUploader
  has_many :events_levels, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
