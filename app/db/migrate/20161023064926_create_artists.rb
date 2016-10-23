class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist
      t.string :artistsort
      t.timestamps
    end
  end
end
