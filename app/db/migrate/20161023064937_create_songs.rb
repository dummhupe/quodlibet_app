class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :tracknumber
      t.string :title
      t.integer :length
      t.text :filename
      t.references :album

      t.timestamps
    end
  end
end
