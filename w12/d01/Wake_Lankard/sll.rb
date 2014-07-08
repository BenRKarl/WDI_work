require 'pry'
require 'pry-nav'

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

class SinglyLinkedList
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def prepend(value)
    #prepend to the beginning
    value = Node.new(value)
    value.next_node = @head
    @head = value
  end

  def append(value)
    # append to the end
    value = Node.new(value)
    last = @head
    while last.next_node != nil
      last = last.next_node
    end
    last.next_node = value
  
  

  end

  def remove
    # removes the first node
    temp = @head
    @head = @head.next_node
  end

  def last
    # get's the last node
    last = @head
    while last.next_node != nil
      last = last.next_node
    end
    last

  end

  def length
    # calculates the length of the list
    length = 1
    node = @head
    while node != last
      node = node.next_node
      length += 1
    end
    length
  end

  def find(input)
    # returns the node with that value or nil if none found
    node = @head
    while node != last
      node = node.next_node
      return node if node.value == input
    end

  end

  def to_s
    node = @head
    puts node
    while node.next_node != nil
      node = node.next_node
      puts node
    end

  end


end

slist = SinglyLinkedList.new("one")
slist.prepend("two")
slist.prepend("three")
slist.append("four")
slist.remove
puts "last: " + slist.last.to_s
puts "len: " +slist.length.to_s
puts "find four: "+ slist.find("four").to_s

puts slist
