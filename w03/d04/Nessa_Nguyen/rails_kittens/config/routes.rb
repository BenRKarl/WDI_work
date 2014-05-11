Rails.application.routes.draw do
  get '/' => 'kittens#index'
  get '/kittens' => 'kittens#index'

  @kittens = Kitten.create({width: rand(100..300), height: rand(100..300)})
end
