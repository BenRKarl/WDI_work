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
    new_head = Node.new(value)
    new_head.next_node = @head
  end

  def append(value)
    # append to the end
    tail = Node.new(value)
    @head.next_node = tail
  end

  def remove
    # removes the first node
    self.shift
    @head = @head.next_node
  end

  def last
    # get's the last node
    return self.last
  end

  def length
    # calculates the length of the list
    return self.length
  end

  def find(input)
    # returns the node with that value or nil if none found
    i = 0
    while i < self.length do
      return self[i].value == input ? self[i] || nil
      i += 1
    end
  end

end
