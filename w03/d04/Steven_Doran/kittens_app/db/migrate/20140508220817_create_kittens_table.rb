class CreateKittensTable < ActiveRecord::Migration
  def change
    create_table :kittens_tables do |t|
     t.string :width
     t.string :height
   end
 end
end
