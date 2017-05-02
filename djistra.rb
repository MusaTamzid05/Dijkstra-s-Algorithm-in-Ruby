

class Djistra



    def initialize(queue)
        @queue = queue
    end


    def run

        while @queue.is_empty? == false
            node = @Queue.dequeue

            adj_indexes = node.adj

            adj_indexes.each { |adj_index|
        
                adj_node = @queue.get_node_with_index(adj_index)

                if  @queue.exits(adj_node) == false
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
                    @queue.update(new_node)
                end
                @queue.sort_nodes
            
            }


        end
    end
end
