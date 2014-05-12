KittensIntroApp::Application.routes.draw do
  root 'kittens#index'
  get '/kittens' => 'kittens#index'
  
end
