class GraphNode
    attr_reader :neighbors, :value
    attr_writer :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    starting_node.neighbors.each do |ele|
        if ele.value == target_value
            return ele
        end
    end
    return nil
end

# p bfs(a, "b")
p bfs(a, "f")