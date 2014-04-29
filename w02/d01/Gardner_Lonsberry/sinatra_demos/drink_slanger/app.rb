require 'sinatra'
require 'sinatra/reloader'

Class RandomHash < Hash

def initialize(RandomHash)
smoothie_ingredients = {
    'flax seeds' => '1 tbsp',
    'chia seeds' => '1 tbsp',
    'coconut flakes' => '1 tbsp',
    'spirulina' => '1 tsp',
    'pumpkin seeds' => '1 tbsp',
    'oatmeal' => '1/4 cup',
    'cocoa powder' => '1 tbsp',
    'peanut butter' => '1 tbsp',
    'almonds' => '1/4 cup',
    'walnuts' => '1/4 cup',
    'spinach' => '1/4 cup',
    'greek yogurt' => '1/4 cup',
    'nutrional yeast' => '1 tbsp',
    'brussel sprouts' => '1/4 cup',
    'asparagus' => '1/4 cup',
    'kale' => '1/4 cup',
    'brocoli rabe' => '1/4 cup',
    'blueberries' => '1/4 cup',
    'chopped banana' => '1/2 cup',
    'strawberries' => '1/4 cup',
    'mango' => '1/4 cup',
    'hemp milk' => '1 cup'
  }

@ingredient_used = nil

def random_ingredient
  if @ingredient_used == nil then
    @ingredient_used = Hash.new
  else
    @ingredient_used = Hash.new if @ingredient_used == self.size
end

  if (@ingredient_used == 0) then
    pos = rand(self.size)
    ingredient = self.keys[ingredient]
  else
    @ingredients_not_used = Hash.new
    self.keys.each{|k|
  if (! @ingredient_used.included?(key)) then
      @ingredients_not_used[key] = 1
  end
}

  pos = random(@ingredients_not_used.size)
  key = @ingredients_not_used.keys[pos]
  end

  @ingredient_used[key] = 1
  return key
  end




