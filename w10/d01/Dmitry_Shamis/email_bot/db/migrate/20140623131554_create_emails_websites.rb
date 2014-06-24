class CreateEmailsWebsites < ActiveRecord::Migration
  def change
    create_table :emails_websites do |t|
      t.integer :website_id
      t.integer :email_id

      t.timestamps
    end
  end
end
