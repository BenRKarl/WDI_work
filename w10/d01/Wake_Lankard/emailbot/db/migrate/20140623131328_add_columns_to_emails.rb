class AddColumnsToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :emails, :string
    add_column :emails, :url_id, :integer
  end
end
