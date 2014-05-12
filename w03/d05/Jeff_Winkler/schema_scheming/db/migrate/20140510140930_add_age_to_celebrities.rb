class AddAgeToCelebrities < ActiveRecord::Migration
  def change
    add_column :celebrities, :age, :integer
    add_column :celebrities, :claim_to_fame, :string
    add_column :celebrities, :substance_abuse, :boolean
  end
end
