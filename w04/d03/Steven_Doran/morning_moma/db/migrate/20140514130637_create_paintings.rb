class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.references :artists
      t.timestamps
    end
  end
end
