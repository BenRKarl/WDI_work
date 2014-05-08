class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string :name
      t.string :height
      t.string :width
    end
  end
end
