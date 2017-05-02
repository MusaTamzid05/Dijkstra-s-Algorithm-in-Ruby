require_relative "node.rb"
require_relative "graph.rb"
require_relative "queue"

require_relative "djistra"

node1 = Node.new(1 , "San Francisco" , 0 )
node2 = Node.new(2 , "San Rafeal" )
node3 = Node.new(3 , "Richmond")
node4 = Node.new(4 , "Oakland")
node5 = Node.new(5 , "San Mateo")
node6 = Node.new(6 , "Hayward")
node7 = Node.new(7 , "Palo Alto")
node8 = Node.new(8 , "Fremont")
node9 = Node.new(9 , "San Jose")
node10 = Node.new(10 , "Santa Clara")
node11 = Node.new(11 , "Scotts Valley")
node12 = Node.new(12 , "Watsonville")
node13 = Node.new(13 , "Santa Cruz")
node14 = Node.new(14, "Halfmoon Bay")
node15 = Node.new(15, "Pacifica")



graph = Graph.new

graph.add(node1)
graph.add(node2)
graph.add(node3)
graph.add(node4)
graph.add(node5)
graph.add(node6)
graph.add(node7)
graph.add(node8)
graph.add(node9)
graph.add(node10)
graph.add(node11)
graph.add(node12)
graph.add(node13)
graph.add(node14)
graph.add(node15)

graph.connect(1 , 2 , 18)
graph.connect(1 , 4 , 12)
graph.connect(1 , 15 , 15)


graph.connect(2 , 3 , 15)


graph.connect(3 , 4 , 15)


graph.connect(4 , 6 , 20)


graph.connect(5 , 6 , 20)
graph.connect(5 , 7 , 18)
graph.connect(5 , 14 , 25)


graph.connect(6, 8 , 14)

graph.connect(7, 10 , 10)
graph.connect(7, 8 , 15)


graph.connect(8, 9 , 20)


graph.connect(9, 10 , 15)
graph.connect(9, 12 , 60)


graph.connect(10, 11 , 35)


graph.connect(11, 13 , 10)


graph.connect(12, 13 , 70)


graph.connect(13, 14 , 50)


graph.connect(14, 15 , 15)


nodes = graph.nodes

queue = Queue.new(nodes)
djistra = Djistra.new(queue)
djistra.run
nodes = djistra.nodes


nodes.each { |node|

    city = node.city
    parent_node = node.parent

    if parent_node
        parent = parent_node.city
    else
        parent = "nill"
    end
    puts "#{city} parent  #{parent}"
}


