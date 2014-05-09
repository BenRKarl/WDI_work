class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.integer :width
      t.integer :height

    end
  end
end
