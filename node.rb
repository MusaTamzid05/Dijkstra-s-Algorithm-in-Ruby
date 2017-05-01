

class Node

    attr_accessor :index  , :city
    def initialize(index , city , key = 1000)
        @index = index
        @city = city
        @adj = []
        @key = key
    end

    def show_adj
        puts "Adjecent of city #{@city}"

        @adj.each { |node|
            print node.city + " "
        }

        puts

    end

    def info

        puts "index #{@index}"
        puts "city #{@city}"
        show_adj

    end

    def add_adj(node)
        @adj << node
    end



end
