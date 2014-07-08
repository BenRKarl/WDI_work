require 'pry'

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
  attr_accessor :head, :second_node, :end_node

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value)
  end

  def prepend(value)
    #prepend to the beginning
    @head.value = value
    new_node = Node.new(value+1)
    @head.next_node = new_node
    @second_node = @head.next_node
    return @head
  end

  def append(value)
    # append to the end
    end_node = Node.new(value)
    @second_node.next_node = end_node
    @end_node = @second_node.next_node
    return @second_node
  end

  def remove
    # removes the first node
    second_value = @second_node.value
    @end_node.value = second_value
    binding.pry
    head_value = @head.value
    @second_node.value = head_value
    @head.delete
    @head = @second_node
    @second_node = @end_node
    return @head
  end

  def last
    # get's the last node

  end

  def length
    # calculates the length of the list
  end

  def find(input)
    # returns the node with that value or nil if none found
  end

end

sll = SinglyLinkedList.new
sll.prepend(1)
sll.append(2)
sll.remove
