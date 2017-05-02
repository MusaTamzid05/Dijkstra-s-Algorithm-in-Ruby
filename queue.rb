

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

                if @nodes[i].key <  @nodes[k].key

                    temp = @nodes[i]
                    @nodes[i] = @nodes[k]
                    @nodes[k] = temp
                end

            }
        }
    end


    def size
        @nodes.length
    end

    def is_empty?
        @nodes.empty?
    end

    def exists?(node)
        @nodes.include?(node)
    end


    def show

        @nodes.each { |node|
        
            node.info
        }
    end

    def enqueue(node)
        @nodes.push(node)
        sort_nodes
    end

    def dequeue
        nodes.pop
    end

    def update(new_node)

        current_index = -1
        @nodes.each { |node|

            current_index += 1
            if node.index == new_node.index
                break
            end


        }

        @nodes[current_index] = node
    end


    def get_node_with_index(index)

        @nodes.each { |node|
            if node.index == index

                return node
            end

        }


            return nil
    end

end

