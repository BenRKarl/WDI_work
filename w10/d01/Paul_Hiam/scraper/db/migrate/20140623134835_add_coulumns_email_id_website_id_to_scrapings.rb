class AddCoulumnsEmailIdWebsiteIdToScrapings < ActiveRecord::Migration
  def change
    add_column :scrapings, :website_id, :integer
    add_column :scrapings, :email_id, :integer
  end
end
