class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.string :location
      t.integer :celebrity_id
      t.integer :num_likes
      t.timestamps
    end
  end
end
