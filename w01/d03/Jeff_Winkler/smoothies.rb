# Homework Day 3.
#  Jeff Winkler




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

# Wish I had found split!  Just did two while loops, one for each ingredient and one
# for each letter in each ingredient.

def blend(smoothie_ingredients)
  to_mix = smoothie_ingredients.keys
  num_elem =  to_mix.length
  all_letters = Array.new

  while num_elem > 0
    curr_ingred = to_mix[num_elem-1].delete(' ')
    num_letters = curr_ingred.length
    while num_letters > 0
      all_letters.push(curr_ingred[num_letters-1])
      num_letters -= 1
    end

    num_elem -= 1
  end

  jumbled = all_letters.shuffle.join
  puts jumbled
  return jumbled

end

blend(smoothie_ingredients)




# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender

  def initialize
    @on_off = false
  end

  def turn_on
    @on_off = true
  end

  def turn_off
    @on_off = false
  end


  def blend(smoothie_ingredients)
    if @on_off
      to_mix = smoothie_ingredients.keys
      num_elem =  to_mix.length
      all_letters = Array.new

      while num_elem > 0
        curr_ingred = to_mix[num_elem-1].delete(' ')
        num_letters = curr_ingred.length
        while num_letters > 0
          all_letters.push(curr_ingred[num_letters-1])
          num_letters -= 1
        end

        num_elem -= 1
      end
      jumbled = all_letters.shuffle.join
      puts jumbled
      return jumbled
    else
      puts "Blender is not on"
    end
  end
end

fancy_blen = Blender.new
fancy_blen.blend(smoothie_ingredients)
fancy_blen.turn_on
fancy_blen.blend(smoothie_ingredients)
fancy_blen.turn_off
fancy_blen.blend(smoothie_ingredients)






