class Change < ActiveRecord::Migration
#   def change
#     drop_table :celebrity_chefs

# end

# The above migration's change method is insufficient we need def up/down


def up
drop_table celebrity_chefs
end

def down

  end

  end
