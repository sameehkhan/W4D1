class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  validates :artist_id, presence: true, uniqueness: { scope: :title,
    message: "Artists cannot have multiple artworks with the same title" }

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User
end
