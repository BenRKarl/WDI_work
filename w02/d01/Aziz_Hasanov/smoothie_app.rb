require 'sinatra'
require 'sinatra/reloader'

def random_smoothie(num_of_ingridients)

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

    ingridient_keys = smoothie_ingredients.keys.sample(num_of_ingridients)
    ingridient_keys.map { |ingridient| "#{ingridient}: #{smoothie_ingredients[ingridient]}"}

end

get '/' do
    num_of_ingridients = 3
    "<h1>Todays Smoothie: <h1>" + random_smoothie(num_of_ingridients).join('<br>')
end

get '/smoothie/:num_of_ingridients' do
    num_of_ingridients = params[:num_of_ingridients].to_i
    "<h2>Todays Smoothie: <h2>" + random_smoothie(num_of_ingridients).join('<br>')
end