class DeleteSiteIdFromEmails < ActiveRecord::Migration
  def change
    remove_column :emails, :site_id
  end
end
