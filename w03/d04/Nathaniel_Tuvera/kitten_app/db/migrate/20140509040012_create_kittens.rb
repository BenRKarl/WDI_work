class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :width
      t.string :height
      t.timestamps
    end
  end
end
