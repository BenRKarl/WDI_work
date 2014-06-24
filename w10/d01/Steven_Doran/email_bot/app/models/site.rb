class Site < ActiveRecord::Base
  has_many :appearances
  has_many :people, through: :appearances

  def new
    @site = Site.new
  end

  def create
    @site = Site.create(site_params)

  end

  private

  def site_params
    params.require(:site).permit(:url)
  end


end
