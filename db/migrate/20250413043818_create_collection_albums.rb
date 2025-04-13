class CreateCollectionAlbums < ActiveRecord::Migration[8.0]
  def change
    create_table :collection_albums do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
