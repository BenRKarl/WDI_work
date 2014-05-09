class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string :name
      t.string :id
    end
  end
end
