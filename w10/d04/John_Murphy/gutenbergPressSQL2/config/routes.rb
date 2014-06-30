Rails.application.routes.draw do
  get 'authors' => 'authors#index'
  get 'author/:id' => 'authors#show'
  get 'authors/:author_id/books' => 'books#index'
end
