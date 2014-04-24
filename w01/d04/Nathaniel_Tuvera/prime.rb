def prime?(n)
  put "input: "
  n = gets.chomp.to_i
  if n % n == 0
    return true
  else
    return false
  end
end

prime?
# def prime?(n)
#   while n % n == 0
#     return true
#   else
#     return false
#   end
# end
