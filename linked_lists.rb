
class LinkedList
  def initialize
    @size = 0
    @head = nil
    @tail = nil
  end

  def append(data)
    new_node = Node.new(data.value)
    @size+=1
    if @head.nil?
      @head = new_node
    elsif @head.next.nil?
      @head.next = new_node
      @tail = @head.next
    else
      @tail.next = new_node
      @tail = @tail.next
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    @size+=1
    if @head.nil?
      @head = new_node
    else
      new_node.next = @head
      @head = new_node
    end
  end

  def size
    @size
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    node = @head
    pos = 0
    until pos == index || node.nil?
      node = node.next
      pos += 1
    end
    node
  end

  def pop
    node = @head
    until node.next.next.nil?
      node = node.next
    end
    pop = node.next
    node.next = nil
    @tail = node
    pop
  end

  def contains?(value)
    node = @head
    contains = false
    until contains || node.next.nil?
      if node.value == value
        contains = true
      end
      node = node.next
    end
    contains
  end

  def to_s
    node = @head
    result = ''
    until node.nil?
      result += " ( #{node.value} ) ->"
      node = node.next
    end
    result += ' nil '
    result
  end

  def insert_at(index, node)
    new_node = Node.new(node.value)
    old_connection_node = at(index - 1)
    new_node.next = old_connection_node.next
    old_connection_node.next = new_node
  end

  def remove_at(index)
    old_connection_node = at(index - 1)
    old_connection_node.next = old_connection_node.next.next
  end



end

class Node
  attr_accessor :value, :next
  def initialize(value = nil)
    @next = nil
    @value = value
  end
end

node1 = Node.new(1)
node2 = Node.new(14)
node3 = Node.new(32)
node4 = Node.new(11)
node5 = Node.new(10)
node6 = Node.new(199)


list = LinkedList.new
list.append(node1)
list.append(node2)
list.append(node3)
list.append(node4)
list.append(node5)
list.insert_at(3, node6)
puts list.to_s
list.remove_at(3)
puts list.to_s

