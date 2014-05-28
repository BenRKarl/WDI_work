class DropArtistsReferencesFromPaintings < ActiveRecord::Migration
  def change
    remove_column :paintings, :artists_id
  end
end
