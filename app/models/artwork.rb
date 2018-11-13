class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  validates :artist_id, presence: true
end
