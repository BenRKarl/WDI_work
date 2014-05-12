class CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.integer :name
      t.string :claim_to_fame
      t.boolean :substance_abuse

      t.timestamps
    end
  end
end
