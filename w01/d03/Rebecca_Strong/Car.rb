Class Car

attr_reader :upholstery
#def upholstery
# @upholstery
#end

attr_accessor :top_speed
#def top_speed
# @top_speed
#end
#def top_speed=(value)
#   top_speed = value
#end

def initialize
  @num_wheels = 4
  @upholstery ="vinyl"
  @top_speed = 70
end

def num_wheels
  @num_wheels
end
# Returns 'undefined method num_wheels'

 def num_wheels=(value)
  @num_wheels = value
  puts "hellooo"
end

def reupholstery(fabric)
  @upholstery = fabric
end


end




