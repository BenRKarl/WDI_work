class CreateEmails < ActiveRecord::Migration
  def change
    create_table :Emails do |t|
      t.string :email
      t.timestamps
    end
  end
end