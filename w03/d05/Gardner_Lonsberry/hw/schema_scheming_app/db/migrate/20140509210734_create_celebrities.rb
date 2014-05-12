class CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.string :name
      t.boolean :substance_abuse
      t.string :claim_to_fame
      t.integer :age

      t.timestamps
    end
  end
end
