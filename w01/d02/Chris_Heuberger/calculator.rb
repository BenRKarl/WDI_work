# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts "Which calculator would you like to use?"
  puts "Choose one: basic or advanced?"
  calc_choice = gets.chomp
  if calc_choice == "basic"
    basic–calc
  elsif calc–choice == "advanced"
    advanced–calc
  end
end
