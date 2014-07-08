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
    new_node = Node.new(value)
    new_node.next_node = self.head
    self.head = new_node
  end

  def append(value)
    # append to the end
    new_node = Node.new(value)
    current_node = self.head
    while current_node.next_node != nil do 
      current_node = current_node.next_node
    end
    current_node.next_node = new_node
  end

  def remove
    # removes the first node
    second_node = self.head.next_node
    self.head.next_node = nil
    self.head = second_node
  end

  def last
    # get's the last node
    current_node = self.head
    while current_node.next_node != nil do
      current_node = current_node.next_node
    end
    current_node
  end

  def length
    # calculates the length of the list
    i = 1
    current_node = self.head
    while current_node.next_node != nil do
      current_node = current_node.next_node
      i+=1
    end
    i 
  end

  def find(input)
    # returns the node with that value or nil if none found
    current_node = self.head
    while current_node do
      if current_node.value == input
        return current_node
      else
        current_node = current_node.next_node
      end
    end
    return nil
  end

end

list = SinglyLinkedList.new('first')
list.prepend('second')
list.append('third')
puts "List.head: " + list.head.value
puts '****'
puts "List.head.next_node: " + list.head.next_node.value
puts '****'
puts "List.last: " + list.last.value
puts '****'
puts "List.length: " + list.length.to_s
puts '****'

first = list.find('first')
if first != nil
  puts "list.find('first'): " + first.value
else
  puts "no dice"
end

puts '****'

third = list.find('third')
if third != nil
  puts "list.find('third'): " + third.value
else
  puts "no dice"
end