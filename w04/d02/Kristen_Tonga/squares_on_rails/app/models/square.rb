class Square < ActiveRecord::Base

def initialized
  @side_length = self.side_length
end

def here
  "<div class='square' style='width:#{self.side_length}px', height:'#{self.side_length}px', color:'#{self.square.color}' , border-radius:'#{square.border_radius}px'>"
end

end
