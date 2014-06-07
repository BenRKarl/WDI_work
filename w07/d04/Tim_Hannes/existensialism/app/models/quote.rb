class Quote < ActiveRecord::Base
  serialize :attribution, Array
end
