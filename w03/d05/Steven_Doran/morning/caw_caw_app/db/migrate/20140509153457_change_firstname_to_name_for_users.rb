class ChangeFirstnameToNameForUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :firstname, :name
    end
  end
end
