class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.references :email, index: true
      t.references :site, index: true

      t.timestamps
    end
  end
end
