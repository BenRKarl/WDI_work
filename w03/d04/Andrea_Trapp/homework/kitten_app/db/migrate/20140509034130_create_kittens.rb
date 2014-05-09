class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.integer :width
      t.integer :height
      t.string  :url
    end
  end
end
