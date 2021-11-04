class User < ApplicationRecord
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_person_name

  has_many :profiles

  validates :name, presence: true
end
