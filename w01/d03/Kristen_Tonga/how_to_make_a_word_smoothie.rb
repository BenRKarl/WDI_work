=begin
STEPS:
- take all characters from x part of hash
- chomp
- scramble

This should take the form of:
- class called Blender
- method that takes array of ingredients and returns the blend
- with an ON/OFF switch (switched to off to start)
=end

class Blender

  attr_accessor :power

  def initialize
    @power = "off"
  end

  def blend (smoothie_ingredients)
    if @power == "on"
      just_ingredients = smoothie_ingredients.keys
      dirty_scramble = just_ingredients.join.delete(' ').split(//).shuffle.join
    else
      puts "Your blender is off. Turn it on."
    end
  end

  def switch
    if @power == "off"
      @power = "on"
    else
      @power = "off"
    end
  end

end

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


=begin
NOTES ON PRE-WORK: HOW TO
pry > load "how_to_make_a_word_smoothie.rb"
  true
pry > smoothie_ingredients = {}
pry > b = Blender.new
pry > b.power
pry > b.switch
pry > b.blend


#To isolate x
smoothie_ingredients.each {|x, y| puts "#{x}: #{y}"}
      #smoothie_ingredients.map {|x, y| x}

#FOUR WAYS TO CREATE LETTERS
word.split(//)
word.scan(//)
word.each_byte{|b| puts b.chr}
word.chars.to_a
each{|key, vlaue| bl}

#TO TURN AN ARRAY INTO A STRING
@arr.join("")
@arr * " "

#TO SHUFFLE
s.split(//).shuffle.to_s
s.split('').shuffle.join
def string_shuffle(s)
  s.split('').shuffle.join
end

#TO REMOVE WHITE SPACE (first only removes spaces, second removes newline and tab too)
s.delete(' ')
s.gsub(/\s+/, "")

Class STRING
  def shuffle
    self.split('').shuffle.join
  end
end

#So, to turn an array into scrambled char:
just_ingredients = smoothie_ingredients.map {|x, y| x}
dirty_scramble = just_ingredients.join.delete(' ').split(//).shuffle.join.to_s

#A BIT OF CODE I TRIED AND GAVE UP ON
  def on
    puts "Please put in a hash of ingredients, with the title: smoothie_ingredients."
      smoothie_ingredients.blend
      puts dirty_scramble
      puts "Drink up!"
  end

#WHAT I DID ORIGINALLY
  def off
    puts "Maybe tomrrow then!"
  end
    #puts "Would you like to plug in your blender? (y) or (n)"
    #    answer_1 = gets.chomp.downcase[0]
      if @power == "on"
        puts "Here your smoothie comes!!"
        #puts "Please put in a hash of ingredients."
        #  smoothie_ingredients=gets.chomp
        #puts smoothie_ingredients
        smoothie_ingredients.send (blend)
        puts blend
        puts "Drink up!"
      else answer_1 == "n"
        puts "Maybe tomorrow then."
      end
=end
