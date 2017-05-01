

class Graph
    attr_accessor :nodes
    def initialize
        @nodes = []
    end

    def add(node)
        @nodes << node
    end

    def show_all_nodes

        @nodes.each { |node|
            node.info
        }
    end

    def get_node_with_index(index)

        current_index = 0
        @nodes.each { |node|
            if node.index == index

                return current_index
            end

            current_index += 1
        }


            return nil
    end

    def connect(index1 , index2)

        node1 = get_node_with_index(index1)
        node2 = get_node_with_index(index2)

        if node1 and node2
            @nodes[node1].add_adj(@nodes[node2])
            @nodes[node2].add_adj(@nodes[node1])
            return
        end
        puts "can make connection between nodes"
    end

end
