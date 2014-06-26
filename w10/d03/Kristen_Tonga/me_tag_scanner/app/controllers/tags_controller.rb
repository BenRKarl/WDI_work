class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def create
    url = params[:url]
    doc = HTTParty.get(url)
    tags = doc.scan(/<(\w+)/).flatten.uniq
  end

end
