class CreateProtosTable < ActiveRecord::Migration
  def change
    create_table :protos_tables do |t|
    t.string :name
    t.timestamps
    end
  end
end
