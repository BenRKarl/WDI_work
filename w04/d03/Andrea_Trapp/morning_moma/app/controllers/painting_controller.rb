class PaintingController < ApplicationController
end

# artist_paintings GET    /artists/:artist_id/paintings(.:format)          paintings#index
#                      POST   /artists/:artist_id/paintings(.:format)          paintings#create
#  new_artist_painting GET    /artists/:artist_id/paintings/new(.:format)      paintings#new
# edit_artist_painting GET    /artists/:artist_id/paintings/:id/edit(.:format) paintings#edit
#      artist_painting GET    /artists/:artist_id/paintings/:id(.:format)      paintings#show
#                      PATCH  /artists/:artist_id/paintings/:id(.:format)      paintings#update
#                      PUT    /artists/:artist_id/paintings/:id(.:format)      paintings#update
#                      DELETE /artists/:artist_id/paintings/:id(.:format)      paintings#destroy