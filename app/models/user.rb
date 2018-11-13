# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true


  has_many :artworks,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :Artwork

    has_many :viewer,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

    has_many :shared_artworks,
      through: :artworks,
      source: :views
end
