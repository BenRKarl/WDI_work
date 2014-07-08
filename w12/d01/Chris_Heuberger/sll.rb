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
    # Traverse to the end of the list
    # And insert a new node over there with the specified value
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value, nil)
  end

  def append(value)
    # append to the end
    if head.nil?
      head = Node.new(value)
    else
      current_node = @head
      while current_node.next
        current_node = current_node.next
      end
      current_node.next = Node.new(value)
    end
  end

  def remove
    if head.value == value
      head = head.next
    else
      current_node = head.next
      prev_node = head
    while current_node
      if current_node.value == value
        prev_node.next = current_node.next
        return true
      end
      prev_node = current_node
      current_node = current_node.next
    end
  end

  def last
    if head.nil?
      head = Node.new(value)
    else
      current_node = @head
      while current_node.next
        current_node = current_node.next
      end
    end
  end

  def length
    return false if @count < 1
      current = @head
      str = []
    while current
      str << current.value
      current = current.point
    end
  end

def find(input)
  # Traverse through the list till you hit the "nil" at the end
  while current_node != nil
    return current_node if current_node.value == input
    current_node = current_node.next
  end
end
