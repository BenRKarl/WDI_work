class CreateKittensTable < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :url
    end
  end
end
