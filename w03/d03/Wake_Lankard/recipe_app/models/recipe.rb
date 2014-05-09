class Recipe < ActiveRecord::Base
  belongs_to :meal_types

  def to_s
    @name
  end

end