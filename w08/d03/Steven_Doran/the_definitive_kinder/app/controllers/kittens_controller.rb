class KittensController < ApplicationController
<<<<<<< HEAD

  def index
    
  end

  def create
    kitten = Kitten.create(kitten_params)
    render :json => kitten.to_json
  end

  private
  def kitten_params
    params.require(:kitten).permit(:url)
  end

=======
  def index
  end
>>>>>>> b7e7a7d102bdf6bf63402721797d5d7cea783a68
end