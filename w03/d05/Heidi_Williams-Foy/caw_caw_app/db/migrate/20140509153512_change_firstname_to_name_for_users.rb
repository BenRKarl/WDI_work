class ChangeFirstnameToNameForUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.rename :name, :first_name
  	end
  end
end
