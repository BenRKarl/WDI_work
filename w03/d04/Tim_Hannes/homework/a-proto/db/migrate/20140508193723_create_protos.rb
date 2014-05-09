class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.string :name #told the db to have a column name
    end
  end
end
