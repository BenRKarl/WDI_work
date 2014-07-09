require 'pry'

def longest_word(string)
  array = string.split(/\W+/)
  longest = ''
  while array.length > 1
    if longest.length < array[0].length
      longest = array[0]
      array.shift
    else
      array.shift
    end
  end
  longest
end

puts longest_word("Beware the Jabberwock, my son!
      The jaws that bite, the claws that catch!!!!!!!!!")
