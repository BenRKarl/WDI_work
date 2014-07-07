class DeleteSiteNameFromEmails < ActiveRecord::Migration
  def change
    remove_column :emails, :site_id
  end
end