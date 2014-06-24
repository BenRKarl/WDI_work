class Appearance < ActiveRecord::Base
  belongs_to :site
  belongs_to :email
  validates_uniqueness_of :site_id, scope: :email_id
end
