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
    x = Node.new(value)
    x.next_node = @head
    @head =  x
  end

  def append(value)
    # append to the end
    x = Node.new(value)
    curr_node = @head
    while curr_node.next_node != nil
      curr_node = curr_node.next_node
    end
    curr_node.next_node = x
  end

  def remove
    # removes the first node
    @head = @head.next_node
  end

  def last
    # get's the last node
    curr_node = @head
    while curr_node.next_node != nil
      curr_node = curr_node.next_node
    end
    return curr_node
  end

  def length
    # calculates the length of the list
    counter = 0
    curr_node = @head
    while curr_node.next_node != nil
      curr_node = curr_node.next_node
      counter += 1
    end
    return counter+1
  end

  def find(input)
    # returns the node with that value or nil if none found
    curr_node = @head
    while curr_node.next_node != nil
      if curr_node.value == input
        return curr_node
      end
      curr_node = curr_node.next_node
    end
    if curr_node.value == input
      return curr_node
    else
      return nil
    end
  end

end

new_list = SinglyLinkedList.new("A")
new_list.prepend("B")
new_list.append("C")
new_list.remove

#puts @head

test_node = new_list.head

while test_node.next_node != nil
  puts test_node
  test_node = test_node.next_node
end

puts test_node

puts new_list.last

puts new_list.length

puts new_list.find("A")




