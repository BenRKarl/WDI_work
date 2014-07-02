# Get data from files
def get_data(file)
  f = File.open('files/'+file, 'r')
  text = f.readlines
end

pipe_array  = get_data('pipe.txt')
comma_array = get_data('comma.txt')
space_array = get_data('space.txt')


# Parse each array separately
def parsePipe(person_array)
  person_array.map! do |person|
    attr_array = person.split('|')
    attr_array.each { |attr| attr.strip! }
     { lname:   attr_array[0],
        fname:   attr_array[1],
        initial: attr_array[2],
        gender:  attr_array[3],
        color:   attr_array[4],
        bdate:   attr_array[5].gsub!('-','/')
      }
  end
  return person_array
end

def parseComma(person_array)
  person_array.map! do |person|
    attr_array = person.split(',')
    attr_array.each { |attr| attr.strip! }
     { lname:  attr_array[0],
        fname:  attr_array[1],
        gender: attr_array[2],
        color:  attr_array[3],
        bdate:  attr_array[4],
      }
  end
  return person_array
end

def parseSpace(person_array)
  person_array.map! do |person|
    attr_array = person.split(' ')
    attr_array.each { |attr| attr.strip! }
     {  lname:   attr_array[0],
        fname:   attr_array[1],
        initial: attr_array[2],
        gender:  attr_array[3],
        bdate:   attr_array[4].gsub!('-','/'),
        color:   attr_array[5]
      }
  end

end

# Collecting all person hashes into master list
master_list = []

parsePipe(pipe_array).each { |person| master_list.push(person) }
parseComma(comma_array).each { |person| master_list.push(person) }
parseSpace(space_array).each { |person| master_list.push(person) }

# Sorting methods
def sort_birthdate(list)
  list.sort! do |person_hash1, person_hash2|
    person_hash1[:bdate].slice(-3,3) <=> person_hash2[:bdate].slice(-3,3)
  end
  return list
end

def sort_lastname(list)
  list.sort! do |person_hash1, person_hash2|
    person_hash2[:lname] <=> person_hash1[:lname]
  end
  return list
end


def sort_gender(list)
  females = []
  males = []
  list.each do |person_hash|
    if person_hash[:gender] == 'Female'
      females.push(person_hash)
    else
      males.push(person_hash)
    end
  end

  females.sort! { |person_hash1, person_hash2|
    person_hash1[:lname] <=> person_hash2[:lname]
  }
  males.sort! { |person_hash1, person_hash2|
    person_hash1[:lname] <=> person_hash2[:lname]
  }

  sorted_list = []
  females.each { |person| sorted_list.push(person) }
  males.each { |person| sorted_list.push(person) }
  return sorted_list
end

def display(sorted_list)
  sorted_list.each do |person_hash|
    if person_hash[:gender] == 'M'
      person_hash[:gender] = 'Male'
    else
      person_hash[:gender] = 'Female'
    end
    puts "#{person_hash[:lname]} #{person_hash[:fname]} #{person_hash[:gender]} #{person_hash[:bdate]} #{person_hash[:color]}"
  end
end

# Display sorted lists
puts "Output 1:"
display(sort_gender(master_list))
puts " "

puts "Output 2:"
display(sort_birthdate(master_list))
puts " "

puts "Output 3:"
display(sort_lastname(master_list))
puts " "
