class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :story_photo, StoryPhotoUploader
  mount_uploader :video, UserVideoUploader

  validates :username, presence: true, uniqueness: { case_sensitive: false }

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end

