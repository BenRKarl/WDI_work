class KittensTable < ActiveRecord::Migration
  def change
  	create_table :kittens do |t|
      t.string :name
      t.timestamps
    end
  end
end
