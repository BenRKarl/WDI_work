class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.string :name
      t.integer :planet_id
      t.references :planet
      t.timestamps
    end
  end
end
