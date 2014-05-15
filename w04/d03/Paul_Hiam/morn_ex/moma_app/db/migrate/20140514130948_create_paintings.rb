class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :artist_id

      t.timestamps
    end
  end
end
