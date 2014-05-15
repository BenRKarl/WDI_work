class UpdateKittens < ActiveRecord::Migration
  def change
      update_table :kittens do |t|
      t.integer :width
      t.integer :height
      t.string  :url
    end
  end
end
