class SwapOneToManyRelationship < ActiveRecord::Migration
  def change
    add_reference :students, :houses, index: true
    remove_reference :houses, :students
  end
end
