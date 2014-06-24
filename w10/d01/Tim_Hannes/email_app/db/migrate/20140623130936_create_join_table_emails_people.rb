class CreateJoinTableEmailsPeople < ActiveRecord::Migration
  def change
    create_join_table :emails, :people do |t|
      # t.index [:email_id, :person_id]
      # t.index [:person_id, :email_id]
    end
  end
end
