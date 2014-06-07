Rails.application.routes.draw do
 
  root 'kittens#show'

  get'/kittens/random' => 'kitten#show'


end
