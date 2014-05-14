class FixImgSp < ActiveRecord::Migration
  def change
    rename_column :planets, :imag_url, :image_url
  end
end
