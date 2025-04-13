class WishlistAlbum < ApplicationRecord
  belongs_to :wishlist
  belongs_to :album

  validates :album_id, uniqueness: { scope: :wishlist_id }
end
