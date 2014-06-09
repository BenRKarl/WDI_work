class KittensController < ApplicationController

  def index
  end

  def random
  end

  def new
  end

  def create
    kitten = Kitten.create(kitten_params)
    respond_to do |format|
      format.html { redirect_to kittens_path(kitten) }
      format.json { render :json => kitten.to_json }
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end

end



# GET /kittens             kittens#index      display a list of all kittens
# GET /kittens/new         kittens#new        return an HTML form for creating a new kitten
# POST /kittens            kittens#create     create a new kitten
# GET /kittens/:id         kittens#show       display a specific kitten
# GET /kittens/:id/edit    kittens#edit       return an HTML form for editing a kitten
# PATCH/PUT /kittens/:id   kittens#update     update a specific kitten
# DELETE /kittens/:id      kittens#destroy    delete a specific kitten

