class ArtworkShare < ApplicationRecord
  validates :artwork_id, :viewer_id, presence: true
  validates :viewer_id, uniqueness: { scope: :artwork_id,
    message: "Viewer cannot have artwork shared more than once" }

  belongs_to :artist,
  foreign_key: :artwork_id,
  class_name: :Artwork

  belongs_to :viewer,
  foreign_key: :viewer_id,
  class_name: :User



end
