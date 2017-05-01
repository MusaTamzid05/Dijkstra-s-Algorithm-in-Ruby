

class Queue

    attr_accessor :nodes
    def initialize(nodes)
        @nodes = nodes
        sort_nodes
    end

    def sort_nodes

        @nodes.size.times { |i|
            (@nodes.size - i).times { |j|
                k = j + i

                if @nodes[i].key > @nodes[k].key

                    temp = @nodes[i]
                    @nodes[i] = @nodes[k]
                    @nodes[k] = temp
                end

            }
        }
    end

end

