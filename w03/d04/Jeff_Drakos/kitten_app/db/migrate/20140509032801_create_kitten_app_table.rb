class CreateKittensTable < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :width
      t.string :height
    end
  end
end
