require 'sinatra'
require 'sinatra/reloader'

get '/' do
  def random_smoothie(number=3)
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

  smoothie_ingredientsss = smoothie_ingredients.to_a.sample(number)
  end
end

get '/smoothie/:num_of_ingredients' do
  number = params[:number_of_ingredients].to_i
    "<h2> Today's Smoothie: </h2>" + random_smoothie(number_of_ingredients).join('<br>')
end

get '/name/:first_name' do
  first_name = params[:first_name]

  "Greetings #{first_name}"
end

get '/name/:first_name/:last_name' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  "Greetin #{first_name} #{last_name}"
end


