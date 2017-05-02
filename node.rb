

class Node

    attr_accessor :index  , :city , :key , :adj , :weights
    def initialize(index , city , key = 1000)
        @index = index
        @city = city
        @adj = []
        @key = key
        @parent = nil

        @weights = {}
    end

    def show_adj
        puts "Adjecent of city #{@city}"

        @adj.each { |node|
            print node.city + " "
        }

        puts

    end

    def info

        puts"********************************"

        puts "index #{@index}"
        puts "city #{@city}"
        puts "key #{@key}"
        show_adj
        show_weights

        puts"********************************"
        puts "\n\n\n"

    end

    def add_adj(node , weight)
        @adj << node
        @weights[node.index] = weight
    end

    def show_weights
        puts "showing all the distanse from #{@city}"
        @weights.each { |k , value|
    
            print "#{k} => #{value}  "
        }

        puts
    end

    


end
