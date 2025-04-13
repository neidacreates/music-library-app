class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  has_many :collection_albums, dependent: :destroy
  has_many :collections, through: :collection_albums

  has_many :wishlist_albums, dependent: :destroy
  has_many :wishlists, through: :wishlist_albums

  validates :title, :release_year, :format, :condition, presence: true
end
