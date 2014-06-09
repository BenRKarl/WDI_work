class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
