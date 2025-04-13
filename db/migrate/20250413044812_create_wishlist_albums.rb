class CreateWishlistAlbums < ActiveRecord::Migration[8.0]
  def change
    create_table :wishlist_albums do |t|
      t.references :wishlist, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
