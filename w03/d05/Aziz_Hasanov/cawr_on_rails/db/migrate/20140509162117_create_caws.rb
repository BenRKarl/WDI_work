class CreateCaws < ActiveRecord::Migration
  def change
    create_table :caws do |t|
      t.integer :user_id
      t.string :message
    end
  end
end
