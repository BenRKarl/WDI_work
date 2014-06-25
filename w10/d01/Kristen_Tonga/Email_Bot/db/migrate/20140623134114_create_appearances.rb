class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :website_id
      t.integer :user_id

      t.timestamps
    end
  end
end
