class Cell
  attr_accessor :x, :y

  def initialize(x,y)
    @x = x
    @y = y
  end

  $next_frame = []

  def count_neighbors
    neighbor_count = 0
    $cell_array.each do |cell|
      if cell.x == (self.x - 1) && cell.y == (self.y - 1)
        neighbor_count += 1
      elsif cell.x == (self.x) && cell.y == (self.y - 1)
        neighbor_count += 1
      elsif cell.x == (self.x + 1) && cell.y == (self.y - 1)
        neighbor_count += 1
      elsif cell.x == (self.x + 1) && cell.y == (self.y)
        neighbor_count += 1
      elsif cell.x == (self.x + 1) && cell.y == (self.y + 1)
        neighbor_count += 1
      elsif cell.x == (self.x) && cell.y == (self.y + 1)
        neighbor_count +=1
      elsif cell.x == (self.x - 1) && cell.y == (self.y + 1)
        neighbor_count += 1
      elsif cell.x == (self.x - 1) && cell.y == (self.y)
        neighbor_count += 1    
      end
      
      binding.pry

      if neighbor_count < 2 || neighbor_count > 3
        break
      end
      if neighbor_count == 2 || neighbor_count == 3
        $next_frame << self
      end
    end
  end

end


class Seed

  $cell_array = []

  50.times do  
    cell = Cell.new(rand(-10..10), rand(-10..10))
    $cell_array << cell
  end

end

print $cell_array

gridedgexmin = $cell_array.sort_by! { |cell| cell.x }.first.x
gridedgexmax = $cell_array.sort_by! { |cell| cell.x }.last.x
gridedgeymin = $cell_array.sort_by! { |cell| cell.y }.first.y
gridedgeymax = $cell_array.sort_by! { |cell| cell.y }.last.y

for cell in $cell_array
  cell.count_neighbors
end

print $next_frame





