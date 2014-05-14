class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.string :name
      t.references :planet
      t.timestamps
    end
  end
end
