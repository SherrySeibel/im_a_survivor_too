class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  has_many :profiles

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end

