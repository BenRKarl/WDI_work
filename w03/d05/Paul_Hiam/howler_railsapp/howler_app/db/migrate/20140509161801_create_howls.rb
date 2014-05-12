class CreateHowls < ActiveRecord::Migration
  def change
    create_table :howls do |t|
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
