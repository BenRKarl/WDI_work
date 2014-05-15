class RemoveZodiac < ActiveRecord::Migration
  def change
    remove_column :protos, :zodiac_sign, :string
  end
end
