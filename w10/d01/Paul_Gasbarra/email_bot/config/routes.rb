Rails.application.routes.draw do
root 'welcome#index'
resources :user
resources :email
resources :url


#     Prefix Verb   URI Pattern               Controller#Action
#        root GET    /                         welcome#index
#  user_index GET    /user(.:format)           user#index
#             POST   /user(.:format)           user#create
#    new_user GET    /user/new(.:format)       user#new
#   edit_user GET    /user/:id/edit(.:format)  user#edit
#        user GET    /user/:id(.:format)       user#show
#             PATCH  /user/:id(.:format)       user#update
#             PUT    /user/:id(.:format)       user#update
#             DELETE /user/:id(.:format)       user#destroy
# email_index GET    /email(.:format)          email#index
#             POST   /email(.:format)          email#create
#   new_email GET    /email/new(.:format)      email#new
#  edit_email GET    /email/:id/edit(.:format) email#edit
#       email GET    /email/:id(.:format)      email#show
#             PATCH  /email/:id(.:format)      email#update
#             PUT    /email/:id(.:format)      email#update
#             DELETE /email/:id(.:format)      email#destroy
#   url_index GET    /url(.:format)            url#index
#             POST   /url(.:format)            url#create
#     new_url GET    /url/new(.:format)        url#new
#    edit_url GET    /url/:id/edit(.:format)   url#edit
#         url GET    /url/:id(.:format)        url#show
#             PATCH  /url/:id(.:format)        url#update
#             PUT    /url/:id(.:format)        url#update
#             DELETE /url/:id(.:format)        url#destroy
end
