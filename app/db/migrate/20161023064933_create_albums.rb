class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album
      t.string :albumsort
      t.string :date
      t.string :genre
      t.references :artist

      t.timestamps
    end
  end
end
