# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html

# Every Morning I make a smoothie with the follow ingredients:
@smoothie_ingredients = {
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

#PSUDO Code for blend
#pull all the key names into a string, remove all the spaces, randomize the order of the string
smoothie_string =""

# def blend(smoothie_ingredients)
#   #Create an empty string
#   smoothie_string = ""
#   #Takes each key, strips out white space, and adds it to smoothie_string
#   smoothie_ingredients.each{|key,value| smoothie_string += key.tr_s(" ", "")}
#   #Populates an array, making each letter a single element
#   smoothie_array = smoothie_string.split(//)
#   #Jumbles elements
#   smoothie_array = smoothie_array.shuffle
#   #puts a join of array
#   puts smoothie_array.join
# end


# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender

  attr_accessor :power

  def initialize
    @power = "off"
  end

  def blend(smoothie_ingredients)
    if @power == "on"
      #Create an empty string
      smoothie_string = ""
      #Takes each key, strips out white space, and adds it to smoothie_string
      smoothie_ingredients.each{|key,value| smoothie_string += key.tr_s(" ", "")}
      #Populates an array, making each letter a single element
      smoothie_array = smoothie_string.split(//)
      #Jumbles elements
      smoothie_array = smoothie_array.shuffle
      #puts a join of array
      puts smoothie_array.join
    end
  end

  def power
    if @power == "off"
      @power = "on"
      puts "Power on."
    else
      @power = "off"
      puts "Power off."
    end
  end

end

#Blender.blend(smoothie_ingredients)
#puts "Expect 'Turn on'"
#Blender.power("on")
#puts "Expect 'power on'"
#Blender.blend(smoothie_ingredients)
#puts "Expect 'smoothie"


