class CreateRailsKittensTable < ActiveRecord::Migration
  def change
    create_table :rails_kittens do |t|
      t.string :name
      t.string :width
      t.string :height
      t.timestamps
    end
  end
end
