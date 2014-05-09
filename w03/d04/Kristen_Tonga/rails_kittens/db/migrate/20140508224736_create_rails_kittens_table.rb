class CreateRailsKittensTable < ActiveRecord::Migration
  def change
    create_table :rails_kittens_tables do |t|
      t.string :name
      t.timestamps
    end
  end
end
