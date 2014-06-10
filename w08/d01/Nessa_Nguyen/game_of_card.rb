  def self.random_straight
    start = rand(1..13)
    name_array = []
    name_array.push(start)

    (1..4).each do |i| 
      name_array[i] = name_array[i-1] % 13 + 1     
    end
      
    name_array.map! do |name|
      if name == 1
        name = 'A'
      elsif  name == 11
        name = 'J'
      elsif name == 12
        name = 'Q'
      elsif name == 13
        name = 'K' 
      else 
        name.to_s  
      end             
    end  

    cards = name_array.map do |name|
      Card.where(name: name).sample
    end  

    return cards 
  end
