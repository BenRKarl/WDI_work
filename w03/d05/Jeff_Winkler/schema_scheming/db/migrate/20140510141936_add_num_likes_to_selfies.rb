class AddNumLikesToSelfies < ActiveRecord::Migration
  def change
    add_column :selfies, :num_likes, :integer
  end
end
