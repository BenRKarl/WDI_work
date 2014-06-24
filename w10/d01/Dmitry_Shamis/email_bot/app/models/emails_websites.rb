class EmailsWebsites < ActiveRecord::Base
  belongs_to :website
  belongs_to :email
end
