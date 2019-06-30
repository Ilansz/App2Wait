class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :videos
  has_many :group_users

  mount_uploader :photo, PhotoUploader
  validates :username, presence: true, uniqueness: true
end
