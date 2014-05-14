class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.string :name
      t.references :planets
      t.timestamps
    end
  end
end
