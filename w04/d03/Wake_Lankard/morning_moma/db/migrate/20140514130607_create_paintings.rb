class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.references :artist
      t.timestamps
    end
  end
end
