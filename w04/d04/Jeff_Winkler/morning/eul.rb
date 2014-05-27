

# arr = []
# 1.upto(999) {|i| arr << i}

# arr.select! {|x| x%3==0 || x%5==0}

# y = arr.inject(:+)

# #puts arr
# puts y


puts 1.upto(999).group_by {|x| x%3==0 || x%5==0}[true].inject(:+)



