class KittensController < ApplicationController

def index
    @kitten = Kitten.all

    end



def random

end

  def create
    kitten = Kitten.create(kitten_params)
    respond_to do |format|
    format.html {redirect_to kittens_path(kitten)}
    format.json {render :json => kitten.to_json }
  end
end


def new
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end
















end
