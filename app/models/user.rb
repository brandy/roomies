class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_person_name
  after_commit :add_default_avatar, on: %i[create update]

  has_one_attached :avatar
  has_many :profiles

  validates :name, presence: true

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(:gravity => "Center", resize: "156x156^", crop: '156x156+0+0').processed
    else
      "/default_profile.jpg"
    end
  end

  def avatar_large
    if avatar.attached?
      avatar.variant(:gravity => "Center", resize: "256x256^", crop: '256x256+0+0').processed
    else
      "/default_profile.jpg"
    end
  end

  private

  def add_default_avatar
    unless avatar.attached?
      avatar.attach(
        io: File.open(
          Rails.root.join(
            'app', 'assets', 'images', 'default_profile.jpg'
          )
        ),
        filename: 'default_profile.jpg',
        content_type: 'image/jpg'
      )
    end
  end
end
