class Video < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  validates :tag, presence: true

  mount_uploader :video, VideoUploader
end
