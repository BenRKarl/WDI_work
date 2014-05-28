grid_name =[
  [0,1,1,0,1,0,0,1,0,1],
  [1,1,1,0,0,1,0,0,1,0],
  [0,1,1,0,1,1,1,1,0,0],
  [0,1,1,1,0,0,1,0,1,1],
  [0,0,0,1,1,1,0,1,0,1],
  [0,0,0,0,1,0,1,1,0,1],
  [1,0,1,1,0,1,0,1,0,0],
  [0,0,0,0,1,0,0,0,1,0],
  [0,0,1,0,1,0,0,1,0,1],
  [1,1,0,1,0,0,0,0,0,0]
]

i == 0
while i==0
  def find_neighbors(array_name, line_position, var_position)
    neighbors = []
    neighbors << array_name[line_position][var_position -1]
    neighbors << array_name[line_position][var_position +1]
    neighbors << array_name[line_position - 1][var_position -1]
    neighbors << array_name[line_position - 1][var_position]
    neighbors << array_name[line_position - 1][var_position +1]
    neighbors << array_name[line_position + 1][var_position -1]
    neighbors << array_name[line_position + 1][var_position]
    neighbors << array_name[line_position + 1][var_position +1]
    number_of_neighbors = neighbors.inject {|sum,x| sum + x}
  end

  def tick(grid_name)
    for num in (0...grid_name.length - 1)
      line = grid_name[num]
      for number in (0...line.length - 1)
        var = line[number]
        neighbors = find_neighbors(grid_name,num,number)
        if var == 1
          if neighbors < 2 || neighbors > 3
           grid_name[num][number] = 0 
         end
       elsif var == 0
        if neighbors == 3
          grid_name[num][number] = 1
        end
      end
    end
  end
  print grid_name[0]
  puts
  print grid_name[1]
  puts
  print grid_name[2]
  puts
  print grid_name[3]
  puts
  print grid_name[4]
  puts
  print grid_name[5]
  puts
  print grid_name[6]
  puts
  print grid_name[7]
  puts
  print grid_name[8]
  puts
  print grid_name[9]
  puts
end
end

print tick(grid_name)