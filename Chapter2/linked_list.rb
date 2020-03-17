class Node
    attr_accessor :value, :next
    def initialize(value, nextNode)
        @value = value
        @next = nextNode
    end
end

class LinkedList
    def initialize(value)
        @head = Node.new(value, nil)
    end

    def add_node(value)
        curr = @head
        while curr.next != nil
          curr = curr.next
        end
        curr.next = Node.new(value, nil)
    end

    def delete_node(value)
        if @head.value == value
            @head = @head.next
        else
            curr = @head
            prev = @head
    
            while curr.value != value && curr.next != nil
                prev = curr
                curr = curr.next
            end
            prev.next = curr.next
        end
    end

    def return_list
        arr = []
        curr = @head
        while curr.next != nil
            arr << curr.value
            curr = curr.next
        end
        arr << curr.value
    end
end