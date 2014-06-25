class CreateJoinTableEmailsSites < ActiveRecord::Migration
  def change
    create_join_table :Emails, :Sites do |t|
       t.index [:email_id, :site_id]
       t.index [:site_id, :email_id]
    end
  end
end
