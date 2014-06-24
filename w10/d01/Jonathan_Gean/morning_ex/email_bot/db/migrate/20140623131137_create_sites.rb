class CreateSites < ActiveRecord::Migration
  def change
    create_table :Sites do |t|
      t.string :site
      t.timestamps
    end
  end
end
