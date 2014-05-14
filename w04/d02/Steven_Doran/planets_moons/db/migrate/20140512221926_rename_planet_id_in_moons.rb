class RenamePlanetIdInMoons < ActiveRecord::Migration
  def change
    rename_column :moons, :planets_id, :planet_id
  end
end
