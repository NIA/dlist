class ListItem
    attr_accessor :value, :prev, :nxt

    def initialize( value, prev, nxt )
        @value, @prev, @nxt = value, prev, nxt
    end
end

class List
    attr_reader :head, :tail

    def initialize
        @head, @tail = nil, nil
    end

    def push( value )
        item = ListItem.new value, tail, nil
        if tail
           @tail.nxt = item
        else # empty list
            @head = item
        end
        @tail = item
        self
    end
end

