class CreateProtosTable < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string :name
      t.timestamps
    end
  end
end
