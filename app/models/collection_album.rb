class CollectionAlbum < ApplicationRecord
  belongs_to :collection
  belongs_to :album

  validates :album_id, uniqueness: { scope: :collection_id }
end
