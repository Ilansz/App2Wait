class Event < ApplicationRecord
  belongs_to :group
  has_many :events_levels, dependent: :destroy
  validates :name, presence: true
end
