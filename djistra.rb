

class Djistra


    attr_accessor :nodes
    def initialize(queue)
        @queue = queue
        @nodes = []
    end


    def run

        while @queue.is_empty? == false
            node = @queue.dequeue

            @nodes << node

            adj_nodes = node.adj

            adj_nodes.each { |adj_node|
        

                if  @queue.exists?(adj_node) == false
                    next
                end

                if node.key == 1000
                    src_distance = 0
                else
                    src_distance = node.key
                end


                edge_distance = src_distance + node.weights[adj_node.index]

                if edge_distance < adj_node.key
                    adj_node.key = edge_distance
                    adj_node.parent = node
                    @queue.update(adj_node)
                end
            
            }
            
            @queue.sort_nodes
        end
    end
end
