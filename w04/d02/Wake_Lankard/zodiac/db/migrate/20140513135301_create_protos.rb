class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
      t.date :birthday
      t.string :zodiac_sign
      t.string :name
      

      t.timestamps
    end
  end
end
