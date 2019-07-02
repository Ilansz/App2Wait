class EventsLevel < ApplicationRecord
  belongs_to :event
  validates :desciption, presence: true
  validates :time, presence: true
end
