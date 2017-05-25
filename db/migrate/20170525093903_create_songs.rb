class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.date :release_date
      t.references :artist

      t.timestamps
    end
  end
end
