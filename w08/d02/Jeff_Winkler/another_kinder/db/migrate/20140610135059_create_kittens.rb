class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :url
      t.string :string

      t.timestamps
    end
  end
end
