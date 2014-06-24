class CreateKittens < ActiveRecord::Migration

  def up
    drop_table :kittens
  end

  def down
    create_table :kittens do |t|
      t.string :url

      t.timestamps
    end
  end
end
