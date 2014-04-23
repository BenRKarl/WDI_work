puts "What is the temperature?"
temp = gets.chomp.to_i
puts "Is the AC functional?"
AC_fun = gets.chomp.downcase
puts "What temperature would you like?"
wish_temp = gets.chomp

if AC_fun == yes && wish_temp > temp
    puts "Turn on the AC please"
else
  AC_fun == no && wish_temp < temp
    puts "Fix the AC! It's too hot!"
  end

  #puts "What' the current temperature?"
  #temp = gets.chomp.to_i

  # "Is the ac working?"
  # ac_working = gets.chomp

  #puts "what temp do you wish it was"
  #desired_temp = gets.chomp.to_i

  #if (temp > desired_temp) && ac_working == 'yes'
  #puts "Turn the ac on!"
  #elsif temp > desired_temp && ac_working == "no"
  #puts "fix the ac please"
  #elsif temp < desired_temp && ac_working == "no"
  #puts "fix it whenever!"
  #else puts "maybe get a heater"

