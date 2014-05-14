Rails.application.routes.draw do

  resources :squares

  root 'squares#index'

end


#      Prefix Verb   URI Pattern                 Controller#Action
#     squares GET    /squares(.:format)          squares#index
#             POST   /squares(.:format)          squares#create
#  new_square GET    /squares/new(.:format)      squares#new
# edit_square GET    /squares/:id/edit(.:format) squares#edit
#      square GET    /squares/:id(.:format)      squares#show
#             PATCH  /squares/:id(.:format)      squares#update
#             PUT    /squares/:id(.:format)      squares#update
#             DELETE /squares/:id(.:format)      squares#destroy
#        root GET    /                           squares#index
