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
    new_node = Node.new(value)
    new_node.next_node = self.head
    self.head = new_node
  end

  def append(value)
    new_node = Node.new(value)
    new_node.next_node = self.head
    while current_node.next_node !=nil
    end
    current_node.next_node = new_node
  end

  def remove
    second_node = self.head.next_node
    self.head = second_node
    # removes the first node
  end

  def last
    # get's the last node
  end

  def length
    # calculates the length of the list
  end

  def find(input)
    # returns the node with that value or nil if none found
    current_node = self.head
    while current_node.next_node != nil
      if current_node.value == input
        return current_node
      else
        current_node.next_node
  end

end
