class Appearance < ActiveRecord::Base
  belongs_to :url
  belongs_to :email
end
