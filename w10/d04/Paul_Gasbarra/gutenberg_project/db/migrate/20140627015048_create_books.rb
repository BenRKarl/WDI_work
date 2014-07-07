class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :author_id
      t.integer :gutenberg_id
      t.string :title

      t.timestamps
    end
  end
end
