class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.name :string

      t.timestamps
    end
  end
end