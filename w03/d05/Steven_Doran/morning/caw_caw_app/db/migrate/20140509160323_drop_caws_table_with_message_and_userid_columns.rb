class DropCawsTableWithMessageAndUseridColumns < ActiveRecord::Migration
  def change
    drop_table :caws_table_with_message_and_userid_columns
  end
end
