class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :tweets

  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
end
