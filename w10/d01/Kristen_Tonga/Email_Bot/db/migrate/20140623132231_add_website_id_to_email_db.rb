class AddWebsiteIdToEmailDb < ActiveRecord::Migration
  def change
    add_column :emails, :website_id, :integer
  end
end
