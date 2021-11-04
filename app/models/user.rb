class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_person_name

  has_many :profiles

  validates :name, presence: true

  has_one_attached :avatar

  def avatar_thumbnail
    avatar.variant(:gravity => "Center", resize: "150x150^", crop: '150x150+0+0').processed
  end
end
