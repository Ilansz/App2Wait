class Level < ApplicationRecord
  belongs_to :challenge
  validates :time, presence: true
  validates :description, presence: true
end
