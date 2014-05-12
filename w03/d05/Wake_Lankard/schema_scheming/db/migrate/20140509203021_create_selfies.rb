class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|

      t.timestamps
      t.integer :num_likes
      t.string :location
      t.integer :celebrity_id
    end
  end
end
