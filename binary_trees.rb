class Node
  attr_accessor :parent, :child_left, :child_right, :root, :value
  def initialize(value)
    @value = value
    @parent = nil
    @child_left = nil
    @child_right = nil
  end
end

def build_tree(array)
  root = Node.new(array[0])
  array[1..-1].each do |x|
    new_node = Node.new(x)
    insert_node(new_node, root)
  end
  root
end

def insert_node(node, root)
  if node.value < root.value
    if root.child_left.nil?
      root.child_left = node
      node.parent = root
    else
      insert_node(node, root.child_left)
    end
  elsif node.value > root.value
    if root.child_right.nil?
      root.child_right = node
      node.parent = root
    else
      insert_node(node, root.child_right)
    end
  end
end

def breadth_first_search(value, root)
  visited = []
  visited << root
  puts visited[0].value
  until visited.empty?
    node = visited.pop
    return node if node.value == value
    visited.unshift(node.child_left) unless node.child_left.nil?
    visited.unshift(node.child_right) unless node.child_right.nil?
    visited.each do |x|
      puts x.value
    end
  end
  nil
end

def depth_first_search(value, root)
  if root.nil?
    nil
  elsif value < root.value
    depth_first_search(value, root.child_left)
  elsif value > root.value
    depth_first_search(value, root.child_right)
  else
    root
  end
end

array = [5, 7, 11, 3, 2, 25, 6]
root = build_tree(array)
node_returned = breadth_first_search(25, root)
puts '----------- BFS -------------'
puts node_returned
puts node_returned.value unless node_returned.nil?
puts '-----------------------------'
result = depth_first_search(3, root)
puts '----------- DFS -------------'
puts result
puts result.value
puts result.nil?
puts '-----------------------------'