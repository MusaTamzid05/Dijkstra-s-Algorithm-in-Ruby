require_relative "node.rb"
require_relative "graph.rb"


node = Node.new(1 , "Dhaka")
node2 = Node.new(2 , "England")

node.add_adj(node2)
graph = Graph.new

graph.add(node)
graph.add(node2)

graph.connect(1 , 2)

graph.show_all_nodes
