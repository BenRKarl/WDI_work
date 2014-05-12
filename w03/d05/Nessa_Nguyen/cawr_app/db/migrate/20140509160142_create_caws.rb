class CreateCaws < ActiveRecord::Migration
  def change
    create_table :caws do |t|
    	t.string :message
    	t.integer :user_id
    	t.datetime :created_at
    	t.datetime :updated_at
    end
  end
end
