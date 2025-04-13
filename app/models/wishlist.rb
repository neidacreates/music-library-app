class Wishlist < ApplicationRecord
  belongs_to :user

  has_many :wishlist_albums, dependent: :destroy
  has_many :albums, through: :wishlist_albums

  validates :name, presence: true
end
