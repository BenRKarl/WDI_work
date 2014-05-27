class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :create
      t.string :title
      t.integer :artist_id

      t.timestamps
    end
  end
end
