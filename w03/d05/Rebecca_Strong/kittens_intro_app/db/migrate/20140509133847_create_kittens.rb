class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :width
      t.string :integer
      t.integer :height
      t.string :url

      t.timestamps
    end
  end
end
