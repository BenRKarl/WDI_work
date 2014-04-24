# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html

# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
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
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

def blend(smoothie_ingredients)
  smoothie = [] #empty array
  smoothie_ingredients.each { |ingredients, measurements| smoothie.push(ingredients) }    #populates smoothie array with ingredients (keys) from hash
  smoothie2 = smoothie.join.delete" "   #string variable joining all array entries and deleting white space
  smoothie = smoothie2.split(//).shuffle!   #inserts all letters from smoothies2 as entries in smoothie array and then shufflea the array
  smoothie.join   #convert array into string
end


# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender

  attr_accessor :switch, :smoothie_ingredients

  def initialize
    @switch = "off"
    @smoothie_ingredients = []

  end

  def blend
    smoothie = smoothie_ingredients.join.delete" "
    smoothie = smoothie.split(//).shuffle!
    smoothie.join 
  end

end















