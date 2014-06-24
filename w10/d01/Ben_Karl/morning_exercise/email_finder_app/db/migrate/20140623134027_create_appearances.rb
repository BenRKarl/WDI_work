class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :email_id
      t.integer :website_id

      t.timestamps
    end
  end
end
