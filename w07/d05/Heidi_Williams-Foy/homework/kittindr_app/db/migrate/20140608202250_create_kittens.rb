class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :url
      t.integer :meow
      t.integer :not_meow

      t.timestamps
    end
  end
end
