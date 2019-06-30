class Challenge < ApplicationRecord
  validates :name, presence: true
  validates :photo, presence: true
  has_many :levels, :videos
end
