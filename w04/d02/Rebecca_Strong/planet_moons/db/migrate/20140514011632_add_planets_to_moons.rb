class AddPlanetsToMoons < ActiveRecord::Migration
  def change
    add_column :planets, :moons
  end
end
