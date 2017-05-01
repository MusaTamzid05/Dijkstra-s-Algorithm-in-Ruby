require_relative "node.rb"
require_relative "graph.rb"
require_relative "queue"

node1 = Node.new(1 , "Dhaka" , 5)
node2 = Node.new(2 , "England" , 2)

graph = Graph.new

graph.add(node1)
graph.add(node2)

graph.connect(1 , 2)

graph.show_all_nodes

puts "*************"

queue = Queue.new(graph.nodes)
nodes = queue.nodes

nodes.each { |node|
    node.info
}
