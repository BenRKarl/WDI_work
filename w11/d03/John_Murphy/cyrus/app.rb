require 'pry'

# To get the outputs described in the spec, place this file into a directory with
# only three .txt documents and run this ruby file... after the binding.pry hits, call
# output_1(), output_2(), or output_3() to get the appropriate result. To test each
# output, run test_suite() (Note: Only testing for output_1 has been started).

def get_records
  all_records = []

  entries = Dir.entries('.')
  entries.shift(2)
  entries.delete('app.rb')
  entries.delete('cyrus.zip') if entries.include?('cyrus.zip')
  entries.each do |file_name|
   File.open(file_name, 'r') do |f|
     file = f.readlines
     file.each do |line|
       line.chomp!.gsub!('|', '')
       line.gsub!('\n', '')
       line.gsub!(',', '')
       line.gsub!('  ', ' ')
       line.gsub!('-', '/')
       line.gsub!(/\s.\s/, ' ')
       line = line.split(' ')
       if line[2] == "M"
         line[2] = "Male"
       elsif line[2] == "F"
         line[2] = "Female"
       end
       if line.last[/\d/]
       date = line.pop()
       line.insert(3, date)
       end
       all_records.push(line)
     end
   end
  end
  all_records
end

def output_1
  records = get_records()
  records.sort {|x,y| [x[2],x[0]] <=> [y[2], y[0]]}.each {|record| puts record.join(' ')}
end

def output_2
  records = get_records()
  records.sort {|x,y| [x[3].split('/')[2],x[3].split('/')[0], x[3].split('/')[1]] <=> [y[3].split('/')[2],y[3].split('/')[0], y[3].split('/')[1]]}.each {|record| puts record.join(' ')}
end

def output_3
  records = get_records()
  records.sort {|x,y| y[0] <=> x[0]}.each {|record| puts record.join(' ')}
end

# Only first ouput tested

def test_output_1
  puts '----output_1 test start'
  errors = 0
  count = 0
  results = output_1()
  results.each do |record_array|
    if record_array[2] == "Male"
      count += 1
    end
    if record_array[2] == "Female" && count > 0
      puts '----output_1 is not ordering Male/Female correctly'
      errors += 1
    end
    if record_array[2] != "Male" && record_array[2] != "Female"
      puts '----output_1 has something other than Male or Female genders'
      errors += 1
    end
    if record_array[3].scan(/\d+\/\d+\/\d+/) == []
      puts '----output_1 has a problem with displaying the date in the right place'
      errors += 1
    end
  end
  results.each_index do |index|
    if index < results.length - 2
      if results[index][0] > results[index+1][0] && results[index][2] == results[index + 1][2]
        puts '----the records are not ordered by last name ascending'
        errors += 1
      end
    end
  end
  puts '----output_1 test done, there were ' + errors.to_s + ' errors detected by the test.'
end

# def test_output_2
#   puts 'output_2 test start'
#   if output_2() == result_2
#     puts 'output_2 test passes'
#   else
#     puts 'output_2 test fails'
#   end
#     puts 'output_2 test done'
# end

# def test_output_3
#   if output_3() == result_3
#     puts 'output_3 test passes'
#   else
#     puts 'output_3 test fails'
#   end
# end

def test_suite
  test_output_1()
  # test_output_2()
  # test_output_3()
end

binding.pry


# result_1 = [["Hingis", "Martina", "Female", "4/2/1979", "Green"],
#  ["Kelly", "Sue", "Female", "7/12/1959", "Pink"],
#  ["Kournikova", "Anna", "Female", "6/3/1975", "Red"],
#  ["Seles", "Monica", "Female", "12/2/1973", "Black"],
#  ["Abercrombie", "Neil", "Male", "2/13/1943", "Tan"],
#  ["Bishop", "Timothy", "Male", "4/23/1967", "Yellow"],
#  ["Bonk", "Radek", "Male", "6/3/1975", "Green"],
#  ["Bouillon", "Francis", "Male", "6/3/1975", "Blue"],
#  ["Smith", "Steve", "Male", "3/3/1985", "Red"]]

# result_2 = [["Abercrombie", "Neil", "Male", "2/13/1943", "Tan"],
#  ["Kelly", "Sue", "Female", "7/12/1959", "Pink"],
#  ["Bishop", "Timothy", "Male", "4/23/1967", "Yellow"],
#  ["Seles", "Monica", "Female", "12/2/1973", "Black"],
#  ["Bouillon", "Francis", "Male", "2/8/1975", "Blue"],
#  ["Bonk", "Radek", "Male", "6/3/1975", "Green"],
#  ["Kournikova", "Anna", "Female", "6/3/1975", "Red"],
#  ["Hingis", "Martina", "Female", "4/2/1979", "Green"],
#  ["Smith", "Steve", "Male", "3/3/1985", "Red"]]

#  result_3 = [["Smith", "Steve", "Male", "3/3/1985", "Red"],
#  ["Seles", "Monica", "Female", "12/2/1973", "Black"],
#  ["Kournikova", "Anna", "Female", "6/3/1975", "Red"],
#  ["Kelly", "Sue", "Female", "7/12/1959", "Pink"],
#  ["Hingis", "Martina", "Female", "4/2/1979", "Green"],
#  ["Bouillon", "Francis", "Male", "6/3/1975", "Blue"],
#  ["Bonk", "Radek", "Male", "6/3/1975", "Green"],
#  ["Bishop", "Timothy", "Male", "4/23/1967", "Yellow"],
#  ["Abercrombie", "Neil", "Male", "2/13/1943", "Tan"]]


# Output 1: Output 1 – sorted by gender (females before males) then by last name ascending.
# Hingis Martina Female 4/2/1979 Green
# Kelly Sue Female 7/12/1959 Pink
# Kournikova Anna Female 6/3/1975 Red
# Seles Monica Female 12/2/1973 Black
# Abercrombie Neil Male 2/13/1943 Tan
# Bishop Timothy Male 4/23/1967 Yellow
# Bonk Radek Male 6/3/1975 Green
# Bouillon Francis Male 6/3/1975 Blue
# Smith Steve Male 3/3/1985 Red

# Output 2: sorted by birth date, ascending.
# Abercrombie Neil Male 2/13/1943 Tan
# Kelly Sue Female 7/12/1959 Pink
# Bishop Timothy Male 4/23/1967 Yellow
# Seles Monica Female 12/2/1973 Black
# Bonk Radek Male 6/3/1975 Green
# Bouillon Francis Male 6/3/1975 Blue
# Kournikova Anna Female 6/3/1975 Red
# Hingis Martina Female 4/2/1979 Green
# Smith Steve Male 3/3/1985 Red

# Output 3: sorted by last name, descending.
# Smith Steve Male 3/3/1985 Red
# Seles Monica Female 12/2/1973 Black
# Kournikova Anna Female 6/3/1975 Red
# Kelly Sue Female 7/12/1959 Pink
# Hingis Martina Female 4/2/1979 Green
# Bouillon Francis Male 6/3/1975 Blue
# Bonk Radek Male 6/3/1975 Green
# Bishop Timothy Male 4/23/1967 Yellow
# Abercrombie Neil Male 2/13/1943 Tan
