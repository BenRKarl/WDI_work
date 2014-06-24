class Sites < ActiveRecord::Base
  has_and_belongs_to_many :Emails
end
